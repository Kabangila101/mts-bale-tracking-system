# Changelog

## 2026-08-03

### Fixed
- **Hardcoded server address.** Unlike `RFID ANTENNA`'s uploader, which
  reads the server address from `SharedPreferences`, this app's
  `ScanUploader` had the address compiled in as a literal `const-string`
  inside `ScanUploader$1.smali` (the inner Runnable class) — not read from
  the `SERVER_URL` field at runtime, and pointing at a stale IP and the old
  port 5000. Corrected in both `ScanUploader$1.smali` and the `SERVER_URL`
  field in `ScanUploader.smali` (plus the `patch_src/` reference copies) to
  match the current server address.
- **Weight unit mismatch.** The Assign tab's Weight field was labeled "kg"
  and multiplied entered values by 1000, inconsistent with the server's
  grams-everywhere convention at the time. Later reconciled with the
  backend's own kg-entry convention once the scale hardware settled back on
  Avery — see the final state described in the README.

### Changed
- **Cross-app interference guard.** `ScanUploader.postScan()` neutered to a
  no-op so this handheld's vendor Scan tab cannot post to `/scan` and
  interfere with the fixed reader's scale-station scan/residual matching
  (see the README for the full rationale). `TagCapture.record()`, which the
  Assign tab depends on, is unaffected.

### Verified
- Signed build (`apksigner verify`) confirmed valid across signature
  schemes v1–v3.
- Full assignment round-trip tested against the live server: scan capture
  (typed EPC, since a physical tag wasn't at hand for that pass), form
  submit, and confirmation the bale landed correctly via `/api/tags`.

## 2026-08-03 (initial delivery)

### Added
- Reverse-engineered the vendor `V3.78.apk` (apktool/jadx/baksmali/smali;
  no build script or original source available) and added a new **Assign**
  tab on top of the stock tabs: `AssignActivity.java`, `TagCapture.java`
  (shared reader-callback hook), building on the existing `ScanUploader.java`
  pattern for HTTP calls to the MTS server.

## Known limitations / open items

- A full physical RFID scan through the Assign tab (rather than a typed-in
  EPC) has not been directly re-verified since the most recent rebuild.
