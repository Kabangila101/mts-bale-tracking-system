package com.example.uhf.tools;

import android.util.Log;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

/**
 * Posts a scanned tag EPC to the MTS backend's /scan endpoint.
 * Must be called off the main thread.
 */
public class ScanUploader {
    private static final String TAG = "ScanUploader";

    public static boolean postScan(String serverAddr, String tagId) {
        if (serverAddr == null || serverAddr.trim().isEmpty() || tagId == null || tagId.trim().isEmpty()) {
            return false;
        }
        String urlStr = "http://" + serverAddr.trim() + "/scan";
        HttpURLConnection conn = null;
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setConnectTimeout(3000);
            conn.setReadTimeout(3000);
            conn.setDoOutput(true);
            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");

            String json = "{\"tag_id\":\"" + tagId.trim().replace("\"", "") + "\"}";
            try (OutputStream os = conn.getOutputStream()) {
                os.write(json.getBytes(StandardCharsets.UTF_8));
            }

            int code = conn.getResponseCode();
            Log.i(TAG, "POST " + urlStr + " tag_id=" + tagId + " -> " + code);
            return code == 200;
        } catch (Exception e) {
            Log.e(TAG, "Failed to POST scan to " + urlStr, e);
            return false;
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }
}