package com.UHF.scanlable;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.widget.TabHost;

/**
 * Reconstructed from the decompiled vendor app (original tab set: Scan,
 * Read/Write, Param, Mask, Finding). The only patch applied here is the
 * addition of the Assign tab (intent6/content6 below) backing
 * {@link AssignActivity}; everything else is unmodified vendor behavior.
 * This file is a readable reference copy — the actual patch is applied
 * directly to the smali in apktool_out/, kept in sync with this copy by
 * hand.
 */
public class MainActivity extends TabActivity {
    public static TabHost myTabHost;

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.activity_main);
        myTabHost = getTabHost();
        Intent intent = new Intent(this, (Class<?>) ScanMode.class);
        Intent intent2 = new Intent(this, (Class<?>) ReadWriteActivity.class);
        Intent intent3 = new Intent(this, (Class<?>) ScanView.class);
        Intent intent4 = new Intent(this, (Class<?>) MaskActivity.class);
        Intent intent5 = new Intent(this, (Class<?>) Finding.class);
        Intent intent6 = new Intent(this, (Class<?>) AssignActivity.class); // added: Stage-0 assignment tab
        TabHost.TabSpec content = myTabHost.newTabSpec(getString(R.string.tab_scan)).setIndicator(getString(R.string.tab_scan)).setContent(intent);
        TabHost.TabSpec content2 = myTabHost.newTabSpec(getString(R.string.tab_rw)).setIndicator(getString(R.string.tab_rw)).setContent(intent2);
        TabHost.TabSpec content3 = myTabHost.newTabSpec(getString(R.string.tab_param)).setIndicator(getString(R.string.tab_param)).setContent(intent3);
        TabHost.TabSpec content4 = myTabHost.newTabSpec(getString(R.string.tab_mask)).setIndicator(getString(R.string.tab_mask)).setContent(intent4);
        TabHost.TabSpec content5 = myTabHost.newTabSpec(getString(R.string.finding)).setIndicator(getString(R.string.finding)).setContent(intent5);
        TabHost.TabSpec content6 = myTabHost.newTabSpec(getString(R.string.tab_assign)).setIndicator(getString(R.string.tab_assign)).setContent(intent6);
        myTabHost.addTab(content);
        myTabHost.addTab(content5);
        myTabHost.addTab(content2);
        myTabHost.addTab(content4);
        myTabHost.addTab(content3);
        myTabHost.addTab(content6);
        myTabHost.setCurrentTab(0);
    }

    @Override
    protected void onResume() {
        super.onResume();
    }

    @Override
    protected void onPause() {
        super.onPause();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Reader.rrlib.DisConnect();
    }
}
