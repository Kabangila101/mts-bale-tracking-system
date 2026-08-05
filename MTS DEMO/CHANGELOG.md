# Changelog

Engineering history for the MTS system. Entries here cover backend changes
in this folder; changes to the two Android sub-projects are logged in their
own `CHANGELOG.md` files, but cross-cutting changes that touch more than one
component are noted here too since the server is the integration point.

## 2026-08-04

### Changed
- Refactored `models.py`: removed dead code (`get_tag`, superseded by
  `find_tag`) and extracted the shared "resolve an id that may be an EPC or
  a TID" logic out of `find_tag` and `record_scan` into a single private
  `_resolve()` helper. No behavior change.

### Verified
- Full live wiring test after restart: assign-by-EPC-and-TID, scan by TID,
  confirm resolution through both `record_scan` and `find_tag`; manual
  validate; unrecognized-tag scan; page rendering; clear-data reset to a
  known-clean state.

## 2026-08-03

### Fixed
- `record_weight`'s flagged-reason string was still hardcoded to grams after
  the kg display revert (see below) — corrected to format the difference in
  kilograms. `models.py`'s internal values remain grams by design; this was
  a display-string fix only.
- **Repeated false-flag bug.** An always-on antenna re-reads a stationary
  tag every few seconds; each `/scan` unconditionally froze the scale
  residual to whatever was currently on the platform — the bale's own
  weight — netting to ~0 and flagging it as "way under," over and over on a
  ~3s cycle. Fixed by adding `result_at` and a `RESULT_COOLDOWN_SEC` (10s)
  window: `record_scan` now returns `(tag, is_new_scan)`, and a tag with a
  result younger than the cooldown is treated as still lingering rather
  than a fresh arrival, so residual is not re-frozen against it.

### Added
- `/clear_validation_data` route and the "Clear Data" button on Station 1:
  resets validated count, flagged log, and every tag's own scan/weigh
  result back to `ASSIGNED`, while leaving the assignments themselves
  (bale number, grade, farm, farmer, expected weight, truck) untouched.

### Changed
- **Scale hardware reverted to Avery Weigh-Tronix** (from a brief Mettler
  Toledo trial): `scale.py` restored to a TCP connection against the
  indicator's own address (environment-specific; see `SECRETS.local.txt`),
  `STX`/`ETX`-framed text, software rolling-window stability. Display units
  across `app.py` and both templates reverted from grams back to
  kilograms. `models.py` needed no change — its internal representation
  was always grams regardless of display unit.
- Server port changed from 5000 to 5050 after a collision with an unrelated
  process on this machine; `stop_server.bat` updated to match.
- `WEIGHT_TOLERANCE_G` tuned from 2.15 to 3 grams of slack before a bale is
  flagged.

### Added (earlier same day)
- `find_tag(tag_id)` — read-only EPC/TID lookup with no side effects, added
  to support a second, downstream "flag-check" antenna that re-verifies a
  bale's status without disturbing the scale station's scan/residual
  matching.
- `POST /api/check_tag` — JSON status lookup backing the flag-check antenna.

## 2026-08-03 (initial delivery)

### Added
- Initial Flask app: bale registry (`models.py`), scale integration
  (`scale.py`), and both templates.
- Mettler Toledo scale support added and diagnosed against real hardware
  (MT-SICS continuous stream over USB-serial, no polling required — the
  scale reports stability itself via an `S`/`D` flag). Superseded by the
  Avery revert above once the Mettler unit was taken out of service.
- `start_server.bat` / `stop_server.bat` operational helpers.

## Known limitations / open items

- No persistence — all state is lost on server restart by design.
- Only one server process may hold the scale's serial/TCP connection at a
  time (`use_reloader=False` in `app.py` is intentional, not an oversight).
- If a bale is physically placed on the scale *before* the antenna's `/scan`
  registers it (out of the expected order for this line), the residual
  logic can treat the bale's own weight as leftover debris and under-report
  its actual weight. Not hardened against, since normal line ordering
  (tag passes the antenna, then the bale lands on the scale) doesn't hit
  this case.
