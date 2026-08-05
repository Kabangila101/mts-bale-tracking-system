# SCANNER — Handheld Assignment App

Patched vendor Android application (package `com.UHF.scanlable`, original
`V3.78.apk`) that runs on a handheld RFID scanner (RFIDUH7-PRO) and handles
Stage 0: assigning a tag to a bale before it reaches the factory checkpoint.
See the [system overview](../README.md) for how this fits into the overall
data flow.

Unlike [`RFID ANTENNA`](../RFID%20ANTENNA/README.md), this is **not** an
Android Studio project — there is no build script and no accessible original
source. It is a vendor-shipped APK, reverse-engineered and hand-patched via
apktool/smali. Every rebuild is a manual decompile → edit smali → recompile
→ sign pipeline.

## What the patch adds

On top of the vendor's stock tabs (Scan, Read/Write, Mask, Finding, etc.),
the patch adds a new **Assign** tab that:

- Scans a tag (temporarily lowering RF power so only a tag held close
  responds) and captures its EPC and TID.
- Collects bale number, grade, truck, farm, farmer, and weight, then POSTs
  the assignment to the server's `/api/assign`.
- Lists and deletes existing assignments via `/api/tags` and
  `/api/delete_tag`.

| File (`patch_src/com/UHF/scanlable/`) | Purpose |
|---|---|
| `AssignActivity.java` | The Assign tab itself. |
| `TagCapture.java` | Shared static hook the Assign tab reads from, so it doesn't need to register its own reader callback — that slot is already owned by the vendor Scan tab's `ScanMode`, and registering a second one would conflict with it. |
| `ScanUploader.java` | The vendor Scan tab's existing uploader to `/scan`. Deliberately neutered to a no-op (see below) so this handheld can't interfere with the checkpoint's scale-matching pipeline while its Scan tab is active. |

These files under `patch_src/` are a **readable reference copy** — the
actual app is built from the smali under `apktool_out/smali/`, which must
be kept in sync by hand when either copy changes.

## Why `ScanUploader.postScan()` is disabled

This handheld's job is now Stage-0 assignment, not checkpoint scanning —
that's [`RFID ANTENNA`](../RFID%20ANTENNA/README.md)'s job. The vendor's
Scan tab still has a working uploader to the same `/scan` endpoint the fixed
reader uses for weight-matching at the scale station. If someone left the
Scan tab's Auto mode running while carrying this handheld around, a stray
read could jump ahead of the fixed reader's scan and get weighed against
the wrong tag. `ScanUploader.postScan()` is patched to return immediately
without POSTing anything; `TagCapture.record()` — what the Assign tab
actually depends on — is untouched, so Assign-tab scanning still works.

## File layout

| Path | Purpose |
|---|---|
| `V3.78.apk` | Original, unmodified vendor build. Source of truth for diffing future patches. |
| `V3.78-mts-assign.apk` / `-aligned.apk` / `-signed.apk` (+ `.idsig`) | Patched build, at each stage of the build pipeline (raw → zipaligned → signed). Install `-signed.apk` on the device. Not committed to source control — regenerate locally with the pipeline below (see the note on the server address in `SECRETS.local.txt` first, since the address baked into the public source tree is a placeholder). |
| `apktool_out/` | Live decompile tree (`apktool d`). This is what gets edited and rebuilt — the actual source of the shipped APK. |
| `patch_src/` | Readable Java reference copy of the patch, plus its own compile → dex → smali pipeline used to work out the exact bytecode changes (`out/`, `dexout/`, `smaliout/`). Reference only; not used directly by the build. Not committed — regenerable from the Java copy and the tools below. |
| `tools/` | `apktool.jar`, `baksmali.jar`, `smali.jar` used by the pipeline below. Not committed (generic, large, freely redistributable) — download the exact versions this project was built against: [Apktool v3.0.2](https://github.com/iBotPeaches/Apktool/releases/download/v3.0.2/apktool_3.0.2.jar), [baksmali 3.0.9](https://github.com/baksmali/smali/releases/download/3.0.9/baksmali-3.0.9-fat-release.jar), [smali 3.0.9](https://github.com/baksmali/smali/releases/download/3.0.9/smali-3.0.9-fat-release.jar). |
| `patch-debug.keystore` | Signing key for patched builds (alias `patchkey`, password `android` — the standard Android debug-keystore convention). Not committed — see the "Signing" note below. |

## Signing

`patch-debug.keystore` is intentionally excluded from source control, even
though the repo itself is public: anyone with the keystore file could sign
a modified build that installs as an "update" over this app on a device
that already trusts it. Generate your own before building:

```
keytool -genkeypair -v -keystore patch-debug.keystore -alias patchkey \
  -keyalg RSA -keysize 2048 -validity 10000 -storepass android -keypass android
```

## Rebuild pipeline

1. Edit smali directly under `apktool_out/smali/com/UHF/scanlable/` (and
   update the `patch_src/` Java reference copy to match, for readability).
2. Rebuild the APK:
   ```
   java -jar tools/apktool.jar b apktool_out -o V3.78-mts-assign.apk
   ```
3. Zipalign and sign with `patch-debug.keystore` using Android build-tools
   (this was built against build-tools 34.0.0's `zipalign`/`apksigner`):
   ```
   zipalign -p 4 V3.78-mts-assign.apk V3.78-mts-assign-aligned.apk
   apksigner sign --ks patch-debug.keystore --ks-key-alias patchkey \
     --out V3.78-mts-assign-signed.apk V3.78-mts-assign-aligned.apk
   ```
4. Verify the signature and install:
   ```
   apksigner verify V3.78-mts-assign-signed.apk
   adb install -r V3.78-mts-assign-signed.apk
   ```

## Configuration

The Assign tab's server IP field is separate from `ScanUploader`'s address
and is user-editable at runtime via `SharedPreferences` — changing it does
not require a rebuild. It must match the factory PC's current LAN IP and
port (see the [system overview](../README.md#network-configuration)).

## Device notes (RFIDUH7-PRO)

- The Android **Back** button triggers `MainActivity.onDestroy()`, which
  disconnects the reader (`Reader.rrlib.DisConnect()`) and drops back to a
  low-level serial-port reconnect screen. Navigate via the tab bar
  (SCAN/FIND/R-W/MASK/PARAM/ASSIGN) only; recover from an accidental Back
  press by reconnecting with the default settings shown.
- The app package is not debuggable, so `adb run-as` cannot read its
  `SharedPreferences` directly — verify configuration changes by observed
  behavior instead.
- The launcher activity is not exported, so `am start -n` fails with a
  `SecurityException`. Launch it the same way tapping the home-screen icon
  would:
  ```
  adb shell monkey -p com.UHF.scanlable -c android.intent.category.LAUNCHER 1
  ```

## Known limitations / open items

- No automated tests — verification is manual, on-device (see the
  [CHANGELOG](CHANGELOG.md) for what has been confirmed live).
- A full physical RFID scan through the rebuilt Assign tab (as opposed to
  typing an EPC in manually) has not been exercised end-to-end since the
  most recent smali changes; the code path itself was not touched, so risk
  is considered low.
