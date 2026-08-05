package com.UHF.scanlable;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * Stage 0: scan a tag with the RFIDUH7-PRO and assign it to a bale, without
 * needing the PC's index.html form. Talks to the MTS Flask server's
 * /api/assign, /api/tags, /api/delete_tag JSON routes.
 *
 * Deliberately does NOT call Reader.rrlib.SetCallBack(...) -- that slot is
 * already owned by ScanMode (Scan tab), which is what drives the existing
 * ScanUploader upload to /scan. Instead this reads TagCapture (populated
 * additively from inside ScanMode's shared callback) to pick up both the
 * EPC and TID of whatever tag the shared reader callback just saw.
 */
public class AssignActivity extends Activity implements View.OnClickListener {

    private static final String PREFS_NAME = "assign_prefs";
    private static final String PREF_SERVER_IP = "server_ip";
    private static final String PREF_SCAN_POWER = "scan_power";
    private static final String DEFAULT_SCAN_POWER = "10"; // 0-33 dBm; low on purpose so only a close-held tag responds
    private static final long SCAN_POLL_INTERVAL_MS = 150L;
    private static final long SCAN_TIMEOUT_MS = 5000L;
    private static final long TAGLIST_REFRESH_MS = 2500L;
    private static final long QUIET_CHECK_MS = 400L;   // reader is treated as "already active" if it updated more recently than this
    private static final long SETTLE_WINDOW_MS = 400L; // after the first hit, keep listening this long and keep the latest reading

    private EditText etServerIp;
    private Button btnSaveIp;
    private EditText etTagId;
    private EditText etTid;
    private EditText etScanPower;
    private Button btnScan;
    private EditText etBaleNumber;
    private Spinner spGrade;
    private EditText etTruck;
    private EditText etFarm;
    private EditText etFarmer;
    private EditText etWeight;
    private Button btnAssign;
    private ListView lvAssignedTags;

    private final Handler handler = new Handler();
    private boolean keyPress = false;
    private boolean scanning = false;
    private long scanBaselineAt = 0L;
    private long scanStartedAt = 0L;
    private boolean capturedOnce = false;
    private long captureWindowEndsAt = 0L;
    private boolean powerWasLowered = false;
    private byte savedPowerBeforeScan = 0;
    private boolean refreshLoopRunning = false;

    private final List<JSONObject> assignedTags = new ArrayList<JSONObject>();
    private TagListAdapter tagListAdapter;

    private final Runnable scanPollRunnable = new Runnable() {
        @Override
        public void run() {
            pollForScannedTag();
        }
    };

    private final Runnable refreshRunnable = new Runnable() {
        @Override
        public void run() {
            fetchTags();
            if (refreshLoopRunning) {
                handler.postDelayed(this, TAGLIST_REFRESH_MS);
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_assign);

        etServerIp = (EditText) findViewById(R.id.et_server_ip);
        btnSaveIp = (Button) findViewById(R.id.btn_save_ip);
        etTagId = (EditText) findViewById(R.id.et_tag_id);
        etTid = (EditText) findViewById(R.id.et_tid);
        etScanPower = (EditText) findViewById(R.id.et_scan_power);
        btnScan = (Button) findViewById(R.id.btn_scan);
        etBaleNumber = (EditText) findViewById(R.id.et_bale_number);
        spGrade = (Spinner) findViewById(R.id.sp_grade);
        etTruck = (EditText) findViewById(R.id.et_truck);
        etFarm = (EditText) findViewById(R.id.et_farm);
        etFarmer = (EditText) findViewById(R.id.et_farmer);
        etWeight = (EditText) findViewById(R.id.et_weight);
        btnAssign = (Button) findViewById(R.id.btn_assign);
        lvAssignedTags = (ListView) findViewById(R.id.lv_assigned_tags);

        String[] grades = new String[]{"A", "B", "C"};
        ArrayAdapter<String> gradeAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, grades);
        gradeAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spGrade.setAdapter((SpinnerAdapter) gradeAdapter);

        etServerIp.setText(loadServerIp());
        etScanPower.setText(loadScanPower());

        tagListAdapter = new TagListAdapter();
        lvAssignedTags.setAdapter(tagListAdapter);

        btnSaveIp.setOnClickListener(this);
        btnScan.setOnClickListener(this);
        btnAssign.setOnClickListener(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshLoopRunning = true;
        handler.post(refreshRunnable);
    }

    @Override
    protected void onPause() {
        super.onPause();
        refreshLoopRunning = false;
        handler.removeCallbacks(refreshRunnable);
        stopScanPoll();
    }

    @Override
    public void onClick(View v) {
        if (v == btnSaveIp) {
            saveServerIp(etServerIp.getText().toString().trim());
            Toast.makeText(getApplicationContext(), "Server IP saved", Toast.LENGTH_SHORT).show();
        } else if (v == btnScan) {
            startScanCapture();
        } else if (v == btnAssign) {
            submitAssign();
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 523 && !keyPress) {
            keyPress = true;
            startScanCapture();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 523) {
            keyPress = false;
        }
        return super.onKeyUp(keyCode, event);
    }

    // ---- Scan capture (reads TagCapture, fed additively from ScanMode's shared callback) ----

    private void startScanCapture() {
        if (scanning) {
            return;
        }
        long now = System.currentTimeMillis();
        if (now - TagCapture.lastAt < QUIET_CHECK_MS) {
            // The reader is already producing reads right now -- almost always means
            // the Scan tab's Auto (continuous) mode was left running in the background.
            // Grabbing a value in this state would just be whatever tag it's currently
            // cycling past, not necessarily the one being held up here.
            Toast.makeText(getApplicationContext(),
                    "Reader already active -- if Auto mode is running on the Scan tab, stop it there first",
                    Toast.LENGTH_LONG).show();
            return;
        }
        scanning = true;
        capturedOnce = false;
        scanBaselineAt = TagCapture.lastAt;
        scanStartedAt = now;
        saveScanPower(etScanPower.getText().toString().trim());
        lowerScanPower();
        try {
            Reader.rrlib.ScanRfid();
        } catch (Exception e) {
            scanning = false;
            restoreScanPower();
            Toast.makeText(getApplicationContext(), "Scan failed to start", Toast.LENGTH_SHORT).show();
            return;
        }
        handler.postDelayed(scanPollRunnable, SCAN_POLL_INTERVAL_MS);
    }

    /**
     * Temporarily cuts the reader's RF power so only a tag held right up against the
     * antenna responds -- otherwise UHF's normal range can pick up any tag lying around
     * nearby, not just the one meant to be assigned. Restored in restoreScanPower().
     */
    private void lowerScanPower() {
        powerWasLowered = false;
        try {
            byte[] version = new byte[2];
            byte[] power = new byte[1];
            byte[] band = new byte[1];
            byte[] maxFreq = new byte[1];
            byte[] minFreq = new byte[1];
            if (Reader.rrlib.GetReaderInformation(version, power, band, maxFreq, minFreq) == 0) {
                savedPowerBeforeScan = power[0];
                int desired = parseScanPower();
                if (Reader.rrlib.SetRfPower((byte) desired) == 0) {
                    powerWasLowered = true;
                }
            }
        } catch (Exception e) {
            // best-effort -- if this reader doesn't support power control, just scan as-is
        }
    }

    private void restoreScanPower() {
        if (powerWasLowered) {
            try {
                Reader.rrlib.SetRfPower(savedPowerBeforeScan);
            } catch (Exception e) {
                // best-effort
            }
            powerWasLowered = false;
        }
    }

    private int parseScanPower() {
        try {
            int p = Integer.parseInt(etScanPower.getText().toString().trim());
            if (p < 0) return 0;
            if (p > 33) return 33;
            return p;
        } catch (Exception e) {
            return Integer.parseInt(DEFAULT_SCAN_POWER);
        }
    }

    private void pollForScannedTag() {
        if (!scanning) {
            return;
        }
        if (TagCapture.lastAt > scanBaselineAt) {
            // Keep the field updated with whatever's most recent, but don't stop right
            // away -- if more than one tag is in range, several reads can arrive back to
            // back; waiting out a short settle window converges on one consistent answer
            // instead of racing on whichever callback happens to land first.
            etTagId.setText(TagCapture.lastEpc);
            etTid.setText(TagCapture.lastTid);
            scanBaselineAt = TagCapture.lastAt;
            if (!capturedOnce) {
                capturedOnce = true;
                captureWindowEndsAt = System.currentTimeMillis() + SETTLE_WINDOW_MS;
            }
            if (System.currentTimeMillis() >= captureWindowEndsAt) {
                stopScanPoll();
                return;
            }
            handler.postDelayed(scanPollRunnable, SCAN_POLL_INTERVAL_MS);
            return;
        }
        if (capturedOnce && System.currentTimeMillis() >= captureWindowEndsAt) {
            stopScanPoll();
            return;
        }
        if (System.currentTimeMillis() - scanStartedAt > SCAN_TIMEOUT_MS) {
            stopScanPoll();
            Toast.makeText(getApplicationContext(), "No tag detected, try again", Toast.LENGTH_SHORT).show();
            return;
        }
        handler.postDelayed(scanPollRunnable, SCAN_POLL_INTERVAL_MS);
    }

    private void stopScanPoll() {
        scanning = false;
        capturedOnce = false;
        handler.removeCallbacks(scanPollRunnable);
        restoreScanPower();
    }

    // ---- Server IP / scan power persistence ----

    private String loadScanPower() {
        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        return prefs.getString(PREF_SCAN_POWER, DEFAULT_SCAN_POWER);
    }

    private void saveScanPower(String power) {
        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        prefs.edit().putString(PREF_SCAN_POWER, power).apply();
    }

    private String loadServerIp() {
        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        return prefs.getString(PREF_SERVER_IP, "");
    }

    private void saveServerIp(String ip) {
        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        prefs.edit().putString(PREF_SERVER_IP, ip).apply();
    }

    private String baseUrl() {
        String ip = etServerIp.getText().toString().trim();
        // Accept either a plain IP (append the default Flask port) or "ip:port" as typed.
        if (ip.contains(":")) {
            return "http://" + ip;
        }
        return "http://" + ip + ":5000";
    }

    // ---- Assign ----

    private void submitAssign() {
        final String tagId = etTagId.getText().toString().trim().toUpperCase();
        final String baleNumber = etBaleNumber.getText().toString().trim();
        final String ip = etServerIp.getText().toString().trim();

        if (TextUtils.isEmpty(ip)) {
            Toast.makeText(getApplicationContext(), "Set the server IP first", Toast.LENGTH_SHORT).show();
            return;
        }
        if (TextUtils.isEmpty(tagId)) {
            Toast.makeText(getApplicationContext(), "Scan a tag first", Toast.LENGTH_SHORT).show();
            return;
        }
        if (TextUtils.isEmpty(baleNumber)) {
            Toast.makeText(getApplicationContext(), "Bale Number is required", Toast.LENGTH_SHORT).show();
            return;
        }

        final JSONObject payload = new JSONObject();
        try {
            payload.put("tag_id", tagId);
            String tid = etTid.getText().toString().trim().toUpperCase();
            if (!TextUtils.isEmpty(tid)) {
                payload.put("tid", tid);
            }
            payload.put("bale_number", baleNumber);
            payload.put("grade", spGrade.getSelectedItem() == null ? "" : spGrade.getSelectedItem().toString());
            payload.put("truck", etTruck.getText().toString().trim());
            payload.put("farm", etFarm.getText().toString().trim());
            payload.put("farmer", etFarmer.getText().toString().trim());
            String weightStr = etWeight.getText().toString().trim();
            // Field is entered in kg (how bale weights are naturally given); server stores grams.
            payload.put("weight_g", TextUtils.isEmpty(weightStr) ? 0 : Double.parseDouble(weightStr) * 1000);
        } catch (Exception e) {
            Toast.makeText(getApplicationContext(), "Invalid form data", Toast.LENGTH_SHORT).show();
            return;
        }

        btnAssign.setEnabled(false);
        new Thread(new Runnable() {
            @Override
            public void run() {
                final String result = postJson(baseUrl() + "/api/assign", payload);
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        btnAssign.setEnabled(true);
                        handleAssignResult(result);
                    }
                });
            }
        }).start();
    }

    private void handleAssignResult(String rawResponse) {
        if (rawResponse == null) {
            Toast.makeText(getApplicationContext(), "Assign failed: no response from server", Toast.LENGTH_LONG).show();
            return;
        }
        try {
            JSONObject json = new JSONObject(rawResponse);
            if (json.optBoolean("ok", false)) {
                Toast.makeText(getApplicationContext(), "Bale assigned", Toast.LENGTH_SHORT).show();
                etTagId.setText("");
                etTid.setText("");
                etBaleNumber.setText("");
                etWeight.setText("");
                fetchTags();
            } else {
                Toast.makeText(getApplicationContext(), "Assign failed: " + json.optString("error", "unknown error"), Toast.LENGTH_LONG).show();
            }
        } catch (Exception e) {
            Toast.makeText(getApplicationContext(), "Assign failed: bad response", Toast.LENGTH_LONG).show();
        }
    }

    // ---- Tag list (refresh + delete) ----

    private void fetchTags() {
        final String ip = etServerIp.getText().toString().trim();
        if (TextUtils.isEmpty(ip)) {
            return;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                final String result = getJson(baseUrl() + "/api/tags");
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        applyTagsResult(result);
                    }
                });
            }
        }).start();
    }

    private void applyTagsResult(String rawResponse) {
        if (rawResponse == null) {
            return;
        }
        try {
            JSONArray array = new JSONArray(rawResponse);
            assignedTags.clear();
            for (int i = 0; i < array.length(); i++) {
                assignedTags.add(array.getJSONObject(i));
            }
            tagListAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            // best-effort refresh, ignore malformed/partial responses
        }
    }

    private void deleteTag(final String tagId) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                JSONObject payload = new JSONObject();
                try {
                    payload.put("tag_id", tagId);
                } catch (Exception ignored) {
                }
                final String result = postJson(baseUrl() + "/api/delete_tag", payload);
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        if (result != null) {
                            fetchTags();
                        } else {
                            Toast.makeText(getApplicationContext(), "Delete failed: no response from server", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
            }
        }).start();
    }

    // ---- Plain HTTP helpers (mirrors ScanUploader.java's style -- no new libraries) ----

    private static String postJson(String urlStr, JSONObject payload) {
        HttpURLConnection conn = null;
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setConnectTimeout(3000);
            conn.setReadTimeout(3000);
            conn.setDoOutput(true);
            OutputStream os = conn.getOutputStream();
            os.write(payload.toString().getBytes("UTF-8"));
            os.flush();
            os.close();
            return readResponse(conn);
        } catch (Exception e) {
            return null;
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    private static String getJson(String urlStr) {
        HttpURLConnection conn = null;
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(3000);
            conn.setReadTimeout(3000);
            return readResponse(conn);
        } catch (Exception e) {
            return null;
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    private static String readResponse(HttpURLConnection conn) throws Exception {
        int code = conn.getResponseCode();
        InputStream is = (code >= 200 && code < 300) ? conn.getInputStream() : conn.getErrorStream();
        if (is == null) {
            return null;
        }
        BufferedReader reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        reader.close();
        return sb.toString();
    }

    // ---- List adapter ----

    private class TagListAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return assignedTags.size();
        }

        @Override
        public Object getItem(int position) {
            return assignedTags.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View row = convertView;
            if (row == null) {
                row = LayoutInflater.from(AssignActivity.this).inflate(R.layout.assign_tag_item, parent, false);
            }
            JSONObject tag = assignedTags.get(position);
            final String tagId = tag.optString("tag_id", "");

            TextView info = (TextView) row.findViewById(R.id.tv_row_info);
            String tid = tag.optString("tid", "");
            info.setText(tag.optString("bale_number", "") + "  [" + tag.optString("grade", "") + "]\n"
                    + "EPC: " + tagId + (TextUtils.isEmpty(tid) ? "" : "\nTID: " + tid) + "\n"
                    + tag.optString("farm", "") + " - " + tag.optString("status", ""));

            Button delete = (Button) row.findViewById(R.id.btn_row_delete);
            delete.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    deleteTag(tagId);
                }
            });
            return row;
        }
    }
}
