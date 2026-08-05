"""
In-memory data layer and business logic for bale tracking.

Holds every assignment, scan, and validation result for the current server
run -- there is no database, so all of it is lost on restart by design (see
the project README). Weights are always stored in grams internally; kg
conversion happens only at the display/API boundary in app.py and the
templates.
"""
import threading
import time

tags = {}
_tid_index = {}  # TID -> tag_id (EPC), for tags whose TID was also captured at assign time
_lock = threading.Lock()

WEIGHT_TOLERANCE_G = 3 # grams of slack allowed between expected and scanned weight
AUTO_VALIDATE_MAX_AGE = 5  # seconds a SCANNED tag stays eligible for an auto-matched weight
RESULT_COOLDOWN_SEC = 10  # once a tag has a result, ignore re-scans of it for this long --
                          # otherwise a bale that lingers in an always-on antenna's range gets
                          # re-scanned every few seconds, re-freezing residual against its own
                          # weight (nets to ~0) and flipping it to FLAGGED over and over

def assign_tag(tag_id, bale_number, grade, truck, farm, farmer, weight_g=0, tid=None):
    tag_id = tag_id.strip().upper()
    tid = tid.strip().upper() if tid else None
    clear_unrecognized_scan(tag_id)
    with _lock:
        tags[tag_id] = {
            "tag_id": tag_id,
            "tid": tid,
            "bale_number": bale_number,
            "grade": grade,
            "expected_weight": weight_g,  # grams, as typed at assign time
            "truck": truck,
            "farm": farm,
            "farmer": farmer,
            "actual_weight": None,
            "status": "ASSIGNED",
            "reason": None,
            "scanned_at": None,
            "result_at": None,
        }
        if tid:
            _tid_index[tid] = tag_id
        return tags[tag_id]

def delete_tag(tag_id):
    """Removes an assignment entirely -- e.g. it was a mistake or is no longer needed."""
    tag_id = tag_id.strip().upper()
    with _lock:
        tag = tags.pop(tag_id, None)
        if tag and tag.get("tid"):
            _tid_index.pop(tag["tid"], None)
        scan_log[:] = [t for t in scan_log if t != tag_id]
        global unrecognized_scan
        if unrecognized_scan == tag_id:
            unrecognized_scan = None

def clear_all_tags():
    with _lock:
        tags.clear()
        _tid_index.clear()
        scan_log.clear()
        global unrecognized_scan
        unrecognized_scan = None

def reset_validation_data():
    """Resets today's validation session -- validated count, flagged log, and
    every tag's own scan/weigh result back to ASSIGNED -- WITHOUT deleting the
    assignments themselves (bale #, grade, farm, etc. stay intact), so testing
    can start over without re-assigning every bale from scratch."""
    global validated_count, unrecognized_scan
    with _lock:
        validated_count = 0
        flagged_log.clear()
        scan_log.clear()
        unrecognized_scan = None
        for tag in tags.values():
            tag["status"] = "ASSIGNED"
            tag["actual_weight"] = None
            tag["reason"] = None
            tag["scanned_at"] = None
            tag["result_at"] = None

validated_count = 0
flagged_log = []  # most recent flagged bales, newest first: {tag_id, bale_number, reason, at}

def record_weight(tag_id, actual_weight_g):
    """actual_weight_g: the scanned/entered weight, in grams."""
    global validated_count
    tag_id = tag_id.strip().upper()
    with _lock:
        tag = tags.get(tag_id)
        if not tag:
            return None
        tag["actual_weight"] = actual_weight_g
        tag["result_at"] = time.time()
        diff = actual_weight_g - tag["expected_weight"]
        if abs(diff) <= WEIGHT_TOLERANCE_G:
            tag["status"] = "VALIDATED"
            tag["reason"] = None
            validated_count += 1
        else:
            tag["status"] = "FLAGGED"
            direction = "over" if diff > 0 else "under"
            tag["reason"] = f"Weight {direction} by {abs(diff) / 1000:.3f}kg"
            flagged_log.insert(0, {
                "tag_id": tag_id,
                "bale_number": tag["bale_number"],
                "reason": tag["reason"],
                "at": time.time(),
            })
        return tag

def get_validated_count():
    return validated_count

def get_flagged_log():
    return flagged_log

def all_tags():
    return list(tags.values())

scan_log = []  # most recent scans, newest first
unrecognized_scan = None  # most recent tag_id the antenna scanned that isn't assigned in the system

def _resolve(tag_id):
    """Resolves an id that may be either a tag's EPC or its TID. Returns
    (resolved_tag_id, tag) -- tag is None if not found."""
    tag_id = tag_id.strip().upper()
    tag = tags.get(tag_id)
    if tag is None:
        mapped_id = _tid_index.get(tag_id)
        if mapped_id is not None:
            return mapped_id, tags.get(mapped_id)
    return tag_id, tag

def find_tag(tag_id):
    """Resolves an id that may be either a tag's EPC or its TID to its tag
    record, without recording a scan or mutating any state. Used by the
    flag-check antenna, which only needs to ask "what's this tag's status"
    as a bale passes -- unlike the scale-station antenna's record_scan(),
    it must not disturb scan_log/unrecognized_scan."""
    _, tag = _resolve(tag_id)
    return tag

def record_scan(tag_id):
    """Called by the antenna whenever a tag is read at the factory checkpoint.
    tag_id may be either a tag's EPC or its TID -- whichever the reader sent.

    Returns (tag, is_new_scan). is_new_scan is False when the tag already has
    a result (VALIDATED/FLAGGED) from within the last RESULT_COOLDOWN_SEC --
    i.e. it's almost certainly the same bale still lingering in the antenna's
    range, not a new one arriving, so its status/scan_log position is left
    alone and the caller should NOT re-freeze residual or start a new weigh
    cycle for it."""
    global unrecognized_scan
    with _lock:
        tag_id, tag = _resolve(tag_id)
        if tag:
            unrecognized_scan = None
            if (
                tag["status"] in ("VALIDATED", "FLAGGED")
                and tag["result_at"] is not None
                and time.time() - tag["result_at"] < RESULT_COOLDOWN_SEC
            ):
                return tag, False
            tag["status"] = "SCANNED"
            tag["scanned_at"] = time.time()
            scan_log.insert(0, tag_id)
            return tag, True
        else:
            unrecognized_scan = tag_id
            return None, False

def try_auto_validate(weight_g):
    """Called by the scale monitor whenever a fresh stable reading arrives.
    Matches it to the most recently scanned tag that's still awaiting a weight."""
    if not scan_log:
        return None
    tag_id = scan_log[0]
    tag = tags.get(tag_id)
    if not tag or tag["status"] != "SCANNED" or tag["scanned_at"] is None:
        return None
    if time.time() - tag["scanned_at"] > AUTO_VALIDATE_MAX_AGE:
        return None
    return record_weight(tag_id, weight_g)

def latest_scan():
    if not scan_log:
        return None
    return tags.get(scan_log[0])

def latest_unrecognized_scan():
    return unrecognized_scan

def clear_unrecognized_scan(tag_id):
    global unrecognized_scan
    if unrecognized_scan == tag_id.strip().upper():
        unrecognized_scan = None