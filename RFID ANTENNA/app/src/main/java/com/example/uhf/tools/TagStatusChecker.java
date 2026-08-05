package com.example.uhf.tools;

import android.util.Log;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

/**
 * Asks the MTS backend's /api/check_tag endpoint whether a bale was
 * VALIDATED or FLAGGED at the scale station. Read-only -- unlike
 * ScanUploader.postScan, this must never be confused with a checkpoint
 * scan (it hits a different endpoint that doesn't touch scan_log).
 * Must be called off the main thread.
 */
public class TagStatusChecker {
    private static final String TAG = "TagStatusChecker";

    /** Returns the tag's status (e.g. "FLAGGED", "VALIDATED"), or null if unknown/unreachable. */
    public static String checkStatus(String serverAddr, String tagId) {
        if (serverAddr == null || serverAddr.trim().isEmpty() || tagId == null || tagId.trim().isEmpty()) {
            return null;
        }
        String urlStr = "http://" + serverAddr.trim() + "/api/check_tag";
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
            if (code != 200) {
                Log.i(TAG, "POST " + urlStr + " tag_id=" + tagId + " -> " + code);
                return null;
            }
            InputStream is = conn.getInputStream();
            StringBuilder sb = new StringBuilder();
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    sb.append(line);
                }
            }
            JSONObject obj = new JSONObject(sb.toString());
            if (!obj.optBoolean("found", false)) {
                return null;
            }
            return obj.optString("status", null);
        } catch (Exception e) {
            Log.e(TAG, "Failed to check tag status at " + urlStr, e);
            return null;
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }
}
