package com.example.uhf.tools;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * Persists the MTS backend's {@code host:port} address in SharedPreferences
 * so it can be changed from the Scan tab's UI without a rebuild. Read by
 * {@link AntennaDispatcher} before every upload/status-check call.
 */
public class ServerConfig {
    private static final String PREFS = "mts_server_config";
    private static final String KEY_ADDR = "server_addr";

    public static String getServerAddr(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        return prefs.getString(KEY_ADDR, "");
    }

    public static void setServerAddr(Context context, String addr) {
        SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        prefs.edit().putString(KEY_ADDR, addr == null ? "" : addr.trim()).apply();
    }
}