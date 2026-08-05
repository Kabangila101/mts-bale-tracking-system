# MTS — Bale Tracking System

MTS tracks wool/produce bales through an RFID + scale checkpoint on the
factory floor. A tag assigned to a bale at intake is later read automatically
as the bale reaches the weigh station; its actual weight is compared against
the expected weight recorded at assignment time, and the bale is marked
**VALIDATED** or **FLAGGED**. A second antenna further down the line
re-checks each bale silently and sounds an alarm if it was flagged, so it can
be pulled before it goes any further.

## System overview

```
 handheld scanner            fixed reader (conveyor)          PC
 ┌────────────────┐          ┌───────────────────────┐   ┌────────────┐
 │    SCANNER      │          │     RFID ANTENNA       │   │  MTS DEMO   │
 │ (Stage 0:       │  HTTP    │ Ant 1 (scale station)  │   │ Flask server│
 │  assign tag     │ ───────> │  -> POST /scan          │──>│  + scale    │
 │  to bale)       │          │ Ant 3 (flag-check)      │──>│  integration│
 │                 │          │  -> POST /api/check_tag │   │             │
 └────────────────┘          │  -> alarm on FLAGGED    │   └────────────┘
                              └───────────────────────┘          │
                                                                   │ TCP
                                                            ┌─────────────┐
                                                            │ Avery scale  │
                                                            │ indicator    │
                                                            └─────────────┘
```

## Sub-projects

| Folder | What it is | Runs on |
|---|---|---|
| [`MTS DEMO`](MTS%20DEMO/README.md) | Flask backend: bale registry, weight validation, scale integration | The factory PC |
| [`RFID ANTENNA`](RFID%20ANTENNA/README.md) | Android app (vendor UHF reader SDK + custom checkpoint logic) | The fixed conveyor reader unit |
| [`SCANNER`](SCANNER/README.md) | Patched vendor Android app for Stage-0 bale assignment | A handheld RFID scanner |

Each sub-project folder has its own README with setup, build, and API
details, and a CHANGELOG documenting the engineering history of that
component. Start with the sub-project READMEs for anything implementation
-specific; this file only covers how the pieces fit together.

## Data flow

1. **Assign** — an operator scans a tag with the handheld SCANNER app and
   enters the bale's number, grade, truck, farm, farmer, and expected
   weight. This is POSTed to the server's `/api/assign` endpoint.
2. **Scale station (Antenna 1)** — as the bale reaches the checkpoint, the
   fixed reader scans its tag and POSTs to `/scan`. The server starts a weigh
   window; once the Avery scale reports a stable reading, the server nets
   out any leftover residual on the platform, matches the weight to the most
   recently scanned tag, and marks it VALIDATED (within tolerance) or
   FLAGGED (outside tolerance).
3. **Flag check (Antenna 3)** — further down the conveyor, a second antenna
   re-reads each tag and asks the server (read-only, via `/api/check_tag`)
   whether it was flagged. If so, the reader's buzzer sounds so the bale can
   be pulled off the line.

All server-side state is in-memory (see [`MTS DEMO`](MTS%20DEMO/README.md))
and is lost on restart by design — there is no persistence layer.

## Network configuration

- The Flask server listens on port **5050** on the factory PC, reachable
  over Wi-Fi from both Android devices. Both devices must have the current
  PC IP:port saved in their settings (RFID ANTENNA: Scan tab; SCANNER:
  Assign tab) — this changes if the PC's Wi-Fi IP changes, and neither app
  discovers it automatically.
- The Avery Weigh-Tronix 1105 scale indicator is on a dedicated
  point-to-point Ethernet link, port 3002, separate from the Wi-Fi network
  the two Android devices use.

All real IP addresses (factory PC, scale indicator) are environment-specific
and are intentionally kept out of this repository. Source files that need
one use an obviously-fake placeholder from the address ranges reserved for
documentation use (RFC 5737: `192.0.2.0/24`, `198.51.100.0/24`,
`203.0.113.0/24`). The actual values live in `SECRETS.local.txt` at the repo
root, which is gitignored — see that file's header for exactly which
placeholder maps to which file.
