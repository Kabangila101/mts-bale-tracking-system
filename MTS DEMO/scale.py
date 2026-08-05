"""
Background reader for an Avery Weigh-Tronix 1105 indicator, connected over
Ethernet (point-to-point) via its "slave to COM1" TCP bridge on port 3002.

The indicator streams continuous frames with no request command needed:
    STX <11-char right-justified weight, one decimal> ETX \n \r
e.g. b"\x02       9.0 \x03\n\r"  ->  9.0 kg

There is no unit character or stability flag in the frame -- the value is
always in whatever unit the indicator's display is currently set to (kg),
and stability is inferred in software from a rolling window of samples.
"""
import re
import socket
import threading
import time

# Placeholder address -- the real indicator IP is environment-specific and is
# kept out of source control. See SECRETS.local.txt (gitignored) at the repo
# root for the actual deployment value.
HOST = "203.0.113.20"
PORT = 3002

STABILITY_WINDOW = 5           # consecutive samples required to confirm stability in software
STABILITY_EPSILON_KG = 0.001   # max spread allowed across that window

STX = b"\x02"
ETX = b"\x03"
_NUM_RE = re.compile(rb"[-\d.]+")

_lock = threading.Lock()
_state = {"weight_kg": None, "stable": False, "updated_at": None}
_recent = []


def _handle_frame(payload):
    m = _NUM_RE.search(payload)
    if not m:
        return
    try:
        weight_kg = float(m.group())
    except ValueError:
        return

    with _lock:
        _recent.append(weight_kg)
        if len(_recent) > STABILITY_WINDOW:
            _recent.pop(0)
        stable = (
            len(_recent) == STABILITY_WINDOW
            and (max(_recent) - min(_recent)) <= STABILITY_EPSILON_KG
        )
        _state["weight_kg"] = weight_kg
        _state["stable"] = stable
        _state["updated_at"] = time.time()


def _reader_loop():
    while True:
        try:
            sock = socket.create_connection((HOST, PORT), timeout=5)
            sock.settimeout(1.0)
            print(f"[scale] connected to {HOST}:{PORT}")
            buf = b""
            while True:
                try:
                    chunk = sock.recv(256)
                except socket.timeout:
                    continue
                if not chunk:
                    raise ConnectionError("scale closed the connection")
                buf += chunk
                while True:
                    start = buf.find(STX)
                    if start == -1:
                        buf = b""
                        break
                    end = buf.find(ETX, start)
                    if end == -1:
                        buf = buf[start:]
                        break
                    _handle_frame(buf[start + 1:end])
                    buf = buf[end + 1:]
        except OSError as e:
            print(f"[scale] error: {e} -- retrying in 3s")
            time.sleep(3)


def start():
    threading.Thread(target=_reader_loop, daemon=True).start()


def latest_weight():
    """Returns {"weight_kg": float|None, "stable": bool, "updated_at": float|None}"""
    with _lock:
        return dict(_state)
