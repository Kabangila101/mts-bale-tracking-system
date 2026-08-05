package com.example.uhf.tools;

/**
 * Created by Administrator on 2017-5-5.
 */

public class LogUtils {
    public static boolean DEBUG = false;
    public static String TAG = "cw_";

    public static void logDebug(String strTAG, String msg) {
        if (strTAG.length() > 20) {
            //  strTAG=strTAG.substring(0,20);
        }
        //Log.e(TAG+strTAG,msg);
    }
}
