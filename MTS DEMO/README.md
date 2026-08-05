# MTS DEMO — Backend Server

Flask web application that tracks bales through the RFID + scale checkpoint
described in the [system overview](../README.md). All state lives in memory
and is lost on restart — there is no database.

## Architecture

| File | Responsibility |
|---|---|
| `app.py` | Flask routes and the background auto-validation monitor. |
| `models.py` | In-memory data store and business logic (assignment, scanning, weight validation). |
| `scale.py` | Background thread that reads live weight from the Avery scale indicator. |
| `templates/index.html` | Stage 0 "Assign" page. |
| `templates/factory_processing.html` | Station 1 live checkpoint page. |

Internally, **all weights are stored in grams**; the display layer (templates
and the routes that talk to it) converts to kilograms at the boundary. Tags
can be looked up by EPC or by TID, since different readers may report
either.

### Routes (`app.py`)

| Route | Method | Purpose |
|---|---|---|
| `/` | GET | Stage 0 "Assign" page |
| `/station1` | GET | Station 1 live checkpoint page |
| `/assign` | POST | Assign a tag (form submit from `index.html`) |
| `/delete_tag`, `/clear_all_tags`, `/api/delete_tag` | POST | Remove assignments |
| `/clear_validation_data` | POST | Reset today's validation session (see below) |
| `/scan` | POST | Scale-station antenna reports a tag read |
| `/validate` | POST | Manual weight override, used when the scale is unavailable |
| `/api/assign` | POST | JSON assign, used by the handheld Stage-0 app |
| `/api/tags` | GET | JSON list of all assigned tags |
| `/api/check_tag` | POST | Read-only status lookup, used by the flag-check antenna |
| `/api/latest_scan`, `/api/unrecognized_scan`, `/api/latest_weight`, `/api/stats` | GET | Polled by the Station 1 page's JavaScript |

A background thread (`_auto_validate_monitor` in `app.py`) watches the scale
for fresh stable readings, nets out "residual" (debris left on the platform
after a bale is lifted), and matches the result to whichever tag was most
recently scanned.

### Data model (`models.py`)

- `assign_tag` / `delete_tag` / `clear_all_tags` — manage assignments.
- `record_scan` — called when the scale-station antenna reads a tag; marks
  it `SCANNED` and opens a weigh window. Returns `(tag, is_new_scan)` —
  `is_new_scan` is `False` if the tag already has a result from within the
  last `RESULT_COOLDOWN_SEC`, so a bale lingering in the antenna's range
  doesn't repeatedly reopen its weigh cycle.
- `record_weight` — compares actual vs. expected weight and sets `VALIDATED`
  or `FLAGGED` within `WEIGHT_TOLERANCE_G`.
- `try_auto_validate` — matches a fresh scale reading to the most recently
  scanned tag still awaiting a weight.
- `find_tag` — read-only EPC/TID lookup used by the flag-check antenna; does
  not mutate any state.
- `reset_validation_data` — powers the "Clear Data" button: resets counters
  and per-tag results but keeps the assignments themselves.

### Scale integration (`scale.py`)

Connects to an Avery Weigh-Tronix 1105 indicator over TCP (port 3002; the
indicator's IP is environment-specific, set via `HOST` in `scale.py` -- see
`SECRETS.local.txt` at the repo root for the real deployment value) and
continuously parses its `STX`/`ETX`-framed weight stream. The indicator
reports no stability flag of its own, so stability is
inferred in software from a rolling window of samples
(`STABILITY_WINDOW` / `STABILITY_EPSILON_KG`). `app.py` polls
`scale.latest_weight()` for the current reading.

## Running it

```
python app.py
```

or double-click `start_server.bat`. Serves on `http://localhost:5050` and on
the host machine's LAN IP, for the antenna/handheld apps to reach.
`stop_server.bat` finds and kills whatever is listening on port 5050.

## Design notes

- **Residual netting.** A bale leaves debris on the scale after being lifted
  off, so the platform never truly returns to zero. `app.py` tracks a
  running "residual" value from readings taken while no bale is expected,
  and freezes it the moment a scan announces the next bale, so the next
  weigh-in nets against the correct baseline rather than a stale one.
- **Result cooldown.** Reads on an always-on antenna re-fire every few
  seconds for a tag still in range. Without `RESULT_COOLDOWN_SEC`, each
  re-read would re-freeze residual against the bale's own weight (netting
  to ~0) and re-flag it repeatedly. Tags with a result younger than the
  cooldown are treated as "still lingering," not a new arrival.
- **Weight tolerance.** `WEIGHT_TOLERANCE_G` (currently 3g) is the slack
  allowed between expected and actual weight before a bale is flagged.
