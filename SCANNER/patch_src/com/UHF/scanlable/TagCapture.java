package com.UHF.scanlable;

/**
 * Additive capture point: the shared reader callback (ScanMode$MsgCallback) stashes
 * the most recent EPC+TID pair here so other tabs (like Assign) can pick up both
 * identifiers without registering their own Reader.rrlib callback -- that slot stays
 * owned by ScanMode, so the existing ScanUploader upload keeps working unchanged.
 */
public class TagCapture {
    public static volatile String lastEpc = "";
    public static volatile String lastTid = "";
    public static volatile long lastAt = 0L;

    public static void record(String epc, String tid) {
        lastEpc = epc == null ? "" : epc;
        lastTid = tid == null ? "" : tid;
        lastAt = System.currentTimeMillis();
    }
}
