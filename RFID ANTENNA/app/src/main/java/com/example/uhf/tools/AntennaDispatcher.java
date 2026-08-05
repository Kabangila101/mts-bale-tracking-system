package com.example.uhf.tools;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;

import com.example.uhf.activity.UHFMainActivity;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Routes a tag read to the right MTS action based on which antenna port saw
 * it: port 1 (scale station) uploads to /scan; port 3 (downstream flag-check)
 * silently asks the server whether the bale was FLAGGED and, if so, sounds
 * the reader's alarm. Shared by every fragment that can drive inventory (the
 * vendor Scan tab and the dedicated MTS Control tab) so throttling state
 * stays correct no matter which screen started the scan -- the hardware only
 * has one inventory callback slot, but both UIs feed reads through here.
 */
public class AntennaDispatcher {
    public static final String ANT_SCAN_STATION = "1";
    public static final String ANT_FLAG_CHECK = "3";

    private static final long UPLOAD_THROTTLE_MS = 3000;
    private static final long CHECK_THROTTLE_MS = 3000;

    private static final Map<String, Long> lastUploadedAt = new HashMap<>();
    private static final Map<String, Long> lastCheckedAt = new HashMap<>();

    private static final ExecutorService executorService = Executors.newFixedThreadPool(20);
    private static final Handler mainHandler = new Handler();

    public static void onRead(UHFMainActivity mContext, String ant, String epc) {
        if (TextUtils.isEmpty(epc)) {
            return;
        }
        String antTrimmed = ant == null ? "" : ant.trim();
        if (ANT_SCAN_STATION.equals(antTrimmed)) {
            maybeUploadScan(mContext, epc);
        } else if (ANT_FLAG_CHECK.equals(antTrimmed)) {
            maybeCheckFlag(mContext, epc);
        }
    }

    private static void maybeUploadScan(Context context, final String epc) {
        long now = System.currentTimeMillis();
        synchronized (lastUploadedAt) {
            Long last = lastUploadedAt.get(epc);
            if (last != null && (now - last) < UPLOAD_THROTTLE_MS) {
                return;
            }
            lastUploadedAt.put(epc, now);
        }
        final String serverAddr = ServerConfig.getServerAddr(context);
        if (TextUtils.isEmpty(serverAddr)) {
            return;
        }
        executorService.execute(new Runnable() {
            @Override
            public void run() {
                ScanUploader.postScan(serverAddr, epc);
            }
        });
    }

    private static void maybeCheckFlag(final UHFMainActivity mContext, final String epc) {
        long now = System.currentTimeMillis();
        synchronized (lastCheckedAt) {
            Long last = lastCheckedAt.get(epc);
            if (last != null && (now - last) < CHECK_THROTTLE_MS) {
                return;
            }
            lastCheckedAt.put(epc, now);
        }
        final String serverAddr = ServerConfig.getServerAddr(mContext);
        if (TextUtils.isEmpty(serverAddr)) {
            return;
        }
        executorService.execute(new Runnable() {
            @Override
            public void run() {
                String status = TagStatusChecker.checkStatus(serverAddr, epc);
                if ("FLAGGED".equals(status)) {
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            if (mContext != null) {
                                mContext.playFlagAlarm();
                            }
                        }
                    });
                }
            }
        });
    }

    /** Resets per-EPC throttle state, e.g. when a "Clear" button is pressed. */
    public static void clearThrottles() {
        synchronized (lastUploadedAt) {
            lastUploadedAt.clear();
        }
        synchronized (lastCheckedAt) {
            lastCheckedAt.clear();
        }
    }
}
