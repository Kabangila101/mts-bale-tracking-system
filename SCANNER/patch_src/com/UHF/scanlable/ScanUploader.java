package com.UHF.scanlable;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Vendor Scan tab's original uploader to the MTS backend's {@code /scan}
 * endpoint. Left in place structurally but disabled (see the comment in
 * {@link #postScan}) now that this handheld's job is Stage-0 assignment via
 * {@link AssignActivity}, not checkpoint scanning.
 * <p>
 * Unlike {@code RFID ANTENNA}'s uploader, the server address here is a
 * compiled-in constant rather than a user-editable SharedPreferences value
 * — inlined by the compiler as a literal in {@code ScanUploader$1.smali},
 * so changing it requires editing both this file and that smali class and
 * rebuilding.
 */
public class ScanUploader {

    private static final String SERVER_URL = "http://203.0.113.10:5050/scan";
    private static final long DEBOUNCE_MS = 1000L;

    private static String lastEpc = null;
    private static long lastSentAt = 0L;

    public static void postScan(String epcId) {
        // Disabled on purpose: this handheld is the Stage-0 ASSIGN device now (see
        // AssignActivity), not the checkpoint scanner. The RFID ANTENNA app's fixed
        // reader owns /scan for Station 1's scale-matching pipeline -- if this
        // handheld's vendor Scan tab also posted here, a stray read while carrying
        // it around could jump the queue in app.py's scan_log and get weighed
        // against the wrong tag. TagCapture.record() (called from the same shared
        // callback) is untouched, so the Assign tab keeps working.
        if (true) {
            return;
        }
        if (epcId == null || epcId.length() == 0) {
            return;
        }
        final String epc = epcId;
        long now = System.currentTimeMillis();
        synchronized (ScanUploader.class) {
            if (epc.equals(lastEpc) && (now - lastSentAt) < DEBOUNCE_MS) {
                return;
            }
            lastEpc = epc;
            lastSentAt = now;
        }
        new Thread(new Runnable() {
            public void run() {
                HttpURLConnection conn = null;
                try {
                    URL url = new URL(SERVER_URL);
                    conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Content-Type", "application/json");
                    conn.setConnectTimeout(2000);
                    conn.setReadTimeout(2000);
                    conn.setDoOutput(true);
                    String body = "{\"tag_id\":\"" + epc + "\"}";
                    OutputStream os = conn.getOutputStream();
                    os.write(body.getBytes("UTF-8"));
                    os.flush();
                    os.close();
                    conn.getResponseCode();
                } catch (Exception e) {
                    // best-effort upload, ignore failures
                } finally {
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            }
        }).start();
    }
}
