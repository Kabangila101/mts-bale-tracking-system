# RFID ANTENNA — Fixed Reader App

Android application that runs on the fixed UHF reader unit wired to the
factory conveyor. Built on the reader vendor's demo app for their UHF-A4
SDK; most tabs (Write, Lock, Kill, GPIO, firmware upgrade, etc.) are stock
vendor demo code unrelated to MTS. The custom logic lives in the files
listed below.

See the [system overview](../README.md) for how this app fits into the
overall data flow.

## Antenna layout

The reader is a multi-antenna unit; two of its ports are wired to physical
antennas positioned along the conveyor:

| Port | Role | Behavior |
|---|---|---|
| **1** | Scale station | Every read is POSTed to the server's `/scan` endpoint (`AntennaDispatcher.ANT_SCAN_STATION`). |
| **3** | Downstream flag check | Every read silently asks the server (`/api/check_tag`, read-only) whether the bale was flagged; if so, the reader's buzzer sounds (`AntennaDispatcher.ANT_FLAG_CHECK`). |

Both ports share the SDK's single inventory session — the reader hardware
has one inventory-callback slot, so antennas 1 and 3 always scan together
and cannot be started/stopped independently. Each antenna has its own power
setting.

## Custom files

| File | Purpose |
|---|---|
| `tools/ServerConfig.java` | Persists the MTS server's `host:port` in `SharedPreferences`. |
| `tools/ScanUploader.java` | POSTs `{"tag_id": "<EPC>"}` to `/scan` off the main thread. |
| `tools/TagStatusChecker.java` | POSTs to `/api/check_tag` and returns the tag's status, or `null` if unreachable/unknown. Read-only. |
| `tools/AntennaDispatcher.java` | Routes a tag read to the right action based on which antenna port saw it (see table above), with independent per-EPC throttling for uploads vs. status checks. Shared by every fragment that can drive inventory, since the hardware has only one callback slot. |
| `fragment/MTSControlFragment.java` | Dedicated "MTS Control" tab: per-antenna power (1–30 dBm) for ports 1 and 3, plus a single Start/Stop covering both. No tag list or per-read feedback — validated/flagged results are surfaced on the factory PC's Station 1 page, not the handheld. |
| `fragment/UHFReadTagFragment.java` | Vendor's Scan tab; reads are routed through `AntennaDispatcher.onRead()` the same way the MTS Control tab does. |
| `activity/UHFMainActivity.java` | `playFlagAlarm()` pulses the reader's buzzer several times over ~2s. This bypasses the normal per-read buzzer toggle deliberately, since it's a safety alarm rather than routine feedback. |
| `activity/BaseTabFragmentActivity.java` | `ANTENNA_POWER_DBM` — default power applied to antennas 1 and 3 on connect, to limit read range and reduce cross-antenna interference on close physical setups. |

## Configuration

The MTS server address is set from the Scan tab's UI and stored in
`SharedPreferences` — no rebuild needed to point the app at a different
server. It must match the factory PC's current LAN IP and port (see the
[system overview](../README.md#network-configuration)).

## Building

Requires a JDK 17+ toolchain (AGP 8.2.2). Point `JAVA_HOME` at Android
Studio's bundled JBR rather than a system JDK 8/11 install:

```
JAVA_HOME="C:\Program Files\Android Studio\jbr" ./gradlew.bat assembleDebug
```

## Antenna power tuning

`ANTENNA_POWER_DBM` in `BaseTabFragmentActivity.java` is a starting point,
not a guaranteed read range — actual UHF range depends on tag type, antenna
gain, and environment. Adjust and rebuild if reads are triggering from
further away than the checkpoint requires, or not triggering close enough.
