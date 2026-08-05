# Changelog

## 2026-08-03

### Added
- **MTS Control tab** (`MTSControlFragment.java` + `mts_control_fragment.xml`):
  a dedicated panel for the two MTS antennas instead of navigating the
  vendor's generic Scan/Config tabs. Two independent power controls (ports 1
  and 3) and one shared Start/Stop, matching the hardware's single inventory
  session. Silent by design — no tag list or per-read feedback; results
  belong on the factory PC's Station 1 page.
- `tools/AntennaDispatcher.java`: extracted the antenna-port routing logic
  out of `UHFReadTagFragment` into a shared static class, so both the vendor
  Scan tab and the new MTS Control tab feed reads through the same
  throttling state regardless of which one is actively driving the scan.
- Second antenna support (downstream flag check): `tools/TagStatusChecker.java`
  (read-only `/api/check_tag` lookup) and `UHFMainActivity.playFlagAlarm()`
  (buzzer pulse on a flagged read, independent of the routine per-read
  buzzer toggle).
- `BaseTabFragmentActivity.ANTENNA_POWER_DBM` (10 dBm default), applied to
  both antennas automatically on reader connect, to reduce cross-antenna
  reads on close physical test setups.

### Changed
- Flag-check antenna moved from port 2 to port 3 after port 2 was found to
  be physically faulty on the reader unit.

### Verified
- Live end-to-end test: MTS Control tab renders, both power-set actions
  confirm via toast, Start/Stop correctly drives Auto scanning and disables
  mode selection while running, and a real tag read on port 1 was confirmed
  reaching the server through `AntennaDispatcher.onRead()`.

## 2026-08-03 (initial delivery)

### Added
- MTS customization of the vendor UHF-A4 SDK demo app: `ServerConfig.java`
  (server address persistence) and `ScanUploader.java` (POST to `/scan`)
  wired into the Scan tab, with per-EPC upload throttling since the
  reader's inventory callback re-fires continuously for a tag still in
  range.

## Known limitations / open items

- `ANTENNA_POWER_DBM` is a starting point only; actual read range depends
  on tag type, antenna gain, and environment, and should be verified
  physically (e.g. with a tape measure) against the checkpoint's required
  range.
- The antenna-port value reported by the SDK (`"1"`, `"3"`) is read as a
  plain string in `AntennaDispatcher`; if a different reader firmware
  reports a different format, `ANT_SCAN_STATION` / `ANT_FLAG_CHECK` will
  need updating to match.
