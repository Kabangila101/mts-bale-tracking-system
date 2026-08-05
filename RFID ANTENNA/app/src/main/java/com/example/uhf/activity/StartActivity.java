package com.example.uhf.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

public class StartActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


        Intent intent=new Intent(StartActivity.this,UHFMainActivity.class);
        StartActivity.this.startActivity(intent);
        StartActivity.this.finish();
    }

}
