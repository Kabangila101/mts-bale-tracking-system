"""
MTS backend web server.

Defines every HTTP route the two Android apps and the browser-facing pages
use, and runs the background thread that matches scale readings to scanned
tags. Business logic and all persistent-for-the-session state live in
models.py; this module is routing plus the residual-tracking/auto-validate
loop that ties the scale to the tag registry.
"""
import threading
import time

from flask import Flask, render_template, request, redirect, url_for, jsonify
import models
import scale

app = Flask(__name__)

# Residual tracking: bales get pulled off the scale but leave debris behind, so the
# platform never truly returns to 0. While no bale is expected, we keep updating
# _residual_kg to the latest stable reading (the leftover). The moment an RFID scan
# announces the next bale, we freeze that value and net it out of the next weighing.
_residual_lock = threading.Lock()
_residual_kg = 0.0
_residual_frozen = False
_residual_frozen_at = None

def _freeze_residual():
    global _residual_frozen, _residual_frozen_at
    with _residual_lock:
        _residual_frozen = True
        _residual_frozen_at = time.time()

def _unfreeze_residual():
    global _residual_frozen
    with _residual_lock:
        _residual_frozen = False

def _auto_validate_monitor():
    """Watches the scale for fresh stable readings, nets out residual, and matches
    the result to a pending scan."""
    global _residual_frozen
    last_matched_at = None
    while True:
        reading = scale.latest_weight()

        with _residual_lock:
            # Self-heal: if a scan froze the residual but never got a matching
            # weigh-in (bad tag, nothing placed), stop ignoring residual buildup.
            if (
                _residual_frozen
                and _residual_frozen_at is not None
                and time.time() - _residual_frozen_at > models.AUTO_VALIDATE_MAX_AGE
            ):
                _residual_frozen = False
            frozen = _residual_frozen
            if not frozen and reading["stable"] and reading["weight_kg"] is not None:
                global _residual_kg
                _residual_kg = reading["weight_kg"]
            residual_kg = _residual_kg

        if (
            reading["stable"]
            and reading["weight_kg"] is not None
            and reading["updated_at"] is not None
            and reading["updated_at"] != last_matched_at
            and time.time() - reading["updated_at"] < 2
        ):
            net_weight_kg = max(0.0, reading["weight_kg"] - residual_kg)
            tag = models.try_auto_validate(net_weight_kg * 1000)
            if tag is not None:
                last_matched_at = reading["updated_at"]
                _unfreeze_residual()  # bale weighed -- resume tracking residual for once it's lifted off
        time.sleep(0.2)

scale.start()
threading.Thread(target=_auto_validate_monitor, daemon=True).start()

@app.route("/")
def index():
    return render_template("index.html", tags=models.all_tags())

@app.route("/station1")
def station1():
    return render_template("factory_processing.html")

@app.route("/assign", methods=["POST"])
def assign():
    tag_id = request.form["tag_id"].strip().upper()
    models.assign_tag(
        tag_id=tag_id,
        bale_number=request.form["bale_number"],
        grade=request.form["grade"],
        truck=request.form["truck"],
        farm=request.form["farm"],
        farmer=request.form["farmer"],
        weight_g=float(request.form.get("weight_g") or 0),
    )
    return redirect(url_for("index"))

@app.route("/delete_tag", methods=["POST"])
def delete_tag():
    models.delete_tag(request.form["tag_id"])
    return redirect(url_for("index"))

@app.route("/clear_all_tags", methods=["POST"])
def clear_all_tags():
    models.clear_all_tags()
    return redirect(url_for("index"))

# Station 1's "Clear Data" button -- resets validated count, flagged log, and
# every tag's scan/weigh result back to ASSIGNED, without deleting the
# assignments, so testing can restart without re-assigning from scratch.
@app.route("/clear_validation_data", methods=["POST"])
def clear_validation_data():
    models.reset_validation_data()
    _unfreeze_residual()
    return redirect(url_for("station1"))

# This is the route the RFID antenna/app will call automatically
@app.route("/scan", methods=["POST"])
def scan():
    tag_id = (request.json.get("tag_id") or "").strip().upper()
    print(f"[/scan] raw tag_id received: {request.json.get('tag_id')!r}")
    tag, is_new_scan = models.record_scan(tag_id)
    if is_new_scan:
        _freeze_residual()  # a bale is about to be weighed -- lock in the current leftover
    return jsonify({"ok": tag is not None})

# Station 1 page polls this to show the latest scan live
@app.route("/api/latest_scan")
def api_latest_scan():
    return jsonify(models.latest_scan())

# Factory page polls this to flag a scan of a tag that was never assigned
@app.route("/api/unrecognized_scan")
def api_unrecognized_scan():
    return jsonify({"tag_id": models.latest_unrecognized_scan()})

# Station 1 page polls this to show the live scale reading
@app.route("/api/latest_weight")
def api_latest_weight():
    return jsonify(scale.latest_weight())

# Station 1 page polls this for the validated-bale count and flagged list
@app.route("/api/stats")
def api_stats():
    return jsonify({
        "validated_count": models.get_validated_count(),
        "flagged": models.get_flagged_log(),
    })

@app.route("/validate", methods=["POST"])
def validate():
    tag_id = request.form["tag_id"].strip().upper()
    weight_kg = float(request.form["weight_kg"])  # manual override, entered in kg
    models.record_weight(tag_id, weight_kg * 1000)
    return redirect(url_for("station1"))

# JSON API for the RFIDUH7-PRO scanner's ASSIGN tab (Stage 0 done from the handheld)
@app.route("/api/assign", methods=["POST"])
def api_assign():
    data = request.get_json(force=True) or {}
    tag_id = (data.get("tag_id") or "").strip().upper()
    bale_number = data.get("bale_number") or ""
    if not tag_id or not bale_number:
        return jsonify({"ok": False, "error": "tag_id and bale_number are required"}), 400
    models.assign_tag(
        tag_id=tag_id,
        bale_number=bale_number,
        grade=data.get("grade") or "",
        truck=data.get("truck") or "",
        farm=data.get("farm") or "",
        farmer=data.get("farmer") or "",
        weight_g=float(data.get("weight_g") or 0),
        tid=data.get("tid") or None,
    )
    return jsonify({"ok": True})

@app.route("/api/tags")
def api_tags():
    return jsonify(models.all_tags())

# Called by the second, downstream "flag-check" antenna on the conveyor --
# a read-only status lookup, deliberately NOT record_scan(), so it can't
# interfere with the scale-station antenna's scan/residual matching.
@app.route("/api/check_tag", methods=["POST"])
def check_tag():
    data = request.get_json(force=True) or {}
    tag_id = (data.get("tag_id") or "").strip().upper()
    tag = models.find_tag(tag_id)
    if tag is None:
        return jsonify({"found": False})
    return jsonify({
        "found": True,
        "tag_id": tag["tag_id"],
        "bale_number": tag["bale_number"],
        "status": tag["status"],
        "reason": tag["reason"],
    })

@app.route("/api/delete_tag", methods=["POST"])
def api_delete_tag():
    data = request.get_json(force=True) or {}
    tag_id = (data.get("tag_id") or "").strip().upper()
    if not tag_id:
        return jsonify({"ok": False, "error": "tag_id is required"}), 400
    models.delete_tag(tag_id)
    return jsonify({"ok": True})

if __name__ == "__main__":
    # use_reloader=False: only one process may hold the scale's serial port at a time
    app.run(host="0.0.0.0", port=5050, debug=True, use_reloader=False)