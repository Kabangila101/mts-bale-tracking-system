package com.example.uhf.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import com.example.uhf.R;
import com.example.uhf.activity.BaseTabFragmentActivity;
import com.example.uhf.activity.UHFMainActivity;
import com.example.uhf.tools.AntennaDispatcher;
import com.example.uhf.tools.UIHelper;
import com.rscja.deviceapi.entity.UHFTAGInfo;
import com.rscja.deviceapi.enums.AntennaEnum;
import com.rscja.deviceapi.interfaces.IUHFInventoryCallback;

/**
 * Dedicated MTS control panel: independent power for antenna port 1
 * (scale-station validate) and port 3 (downstream flag-check), plus one
 * Start/Stop covering both -- the reader has a single inventory session, so
 * both ports scan together no matter which tab started it (see
 * AntennaDispatcher). Deliberately shows no tag list, RSSI, count, or
 * per-tag feedback -- validated/flagged results belong on the factory's
 * index.html page, not here. This tab is purely a control surface; an
 * irrelevant or unassigned tag read produces no visible reaction at all,
 * only a FLAGGED result on port 3 triggers the reader's alarm.
 */
public class MTSControlFragment extends KeyDownFragment {

    private UHFMainActivity mContext;

    private EditText etPower1;
    private Button btnSetPower1;
    private EditText etPower3;
    private Button btnSetPower3;

    private RadioGroup rgMode;
    private RadioButton rbSingle;
    private RadioButton rbAuto;
    private Button btnStartStop;

    private int inventoryFlag = 1; // 0 = manual/single, 1 = auto/loop
    private boolean loopFlag = false;
    private boolean isStop = false;

    private final Handler handler = new Handler();

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.mts_control_fragment, container, false);
        inits(view);
        return view;
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        mContext = (UHFMainActivity) getActivity();
    }

    @Override
    public void onResume() {
        super.onResume();
        mContext.currentFragment = this;
    }

    @Override
    public void onPause() {
        super.onPause();
        stopInventory();
        mContext.currentFragment = null;
    }

    private void inits(View view) {
        etPower1 = view.findViewById(R.id.etPower1);
        btnSetPower1 = view.findViewById(R.id.btnSetPower1);
        etPower3 = view.findViewById(R.id.etPower3);
        btnSetPower3 = view.findViewById(R.id.btnSetPower3);
        rgMode = view.findViewById(R.id.rgMode);
        rbSingle = view.findViewById(R.id.rbSingle);
        rbAuto = view.findViewById(R.id.rbAuto);
        btnStartStop = view.findViewById(R.id.btnStartStop);

        etPower1.setText(String.valueOf(BaseTabFragmentActivity.ANTENNA_POWER_DBM));
        etPower3.setText(String.valueOf(BaseTabFragmentActivity.ANTENNA_POWER_DBM));

        btnSetPower1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                setPower(AntennaEnum.ANT1, etPower1);
            }
        });
        btnSetPower3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                setPower(AntennaEnum.ANT3, etPower3);
            }
        });

        rgMode.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                inventoryFlag = (checkedId == rbSingle.getId()) ? 0 : 1;
            }
        });

        btnStartStop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (loopFlag) {
                    stopInventory();
                } else {
                    startScan();
                }
            }
        });
    }

    private void setPower(AntennaEnum ant, EditText field) {
        int power;
        try {
            power = Integer.parseInt(field.getText().toString().trim());
        } catch (Exception e) {
            UIHelper.ToastMessage(mContext, "Enter a power value 1-30");
            return;
        }
        if (power < 1 || power > 30) {
            UIHelper.ToastMessage(mContext, "Power must be 1-30 dBm");
            return;
        }
        if (mContext.mReader.setAntennaPower(ant, power)) {
            UIHelper.ToastMessage(mContext, "Power set");
        } else {
            UIHelper.ToastMessage(mContext, "Failed to set power");
        }
    }

    private void startScan() {
        switch (inventoryFlag) {
            case 0: // manual -- one read per press, no continuous loop
                UHFTAGInfo info = mContext.mReader.inventorySingleTag();
                if (info != null) {
                    AntennaDispatcher.onRead(mContext, info.getAnt(), info.getEPC());
                } else {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_inventory_fail);
                }
                break;
            case 1: // auto -- always scanning until Stop is pressed
                mContext.mReader.setInventoryCallback(new IUHFInventoryCallback() {
                    @Override
                    public void callback(final UHFTAGInfo tagInfo) {
                        if (tagInfo == null) {
                            return;
                        }
                        handler.post(new Runnable() {
                            @Override
                            public void run() {
                                AntennaDispatcher.onRead(mContext, tagInfo.getAnt(), tagInfo.getEPC());
                            }
                        });
                    }
                });
                if (mContext.mReader.startInventoryTag()) {
                    loopFlag = true;
                    isStop = false;
                    btnStartStop.setText("Stop");
                    setModeEnabled(false);
                } else {
                    mContext.mReader.stopInventory();
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_inventory_open_fail);
                }
                break;
            default:
                break;
        }
    }

    private synchronized void stopInventory() {
        if (loopFlag && !isStop) {
            isStop = true;
            if (mContext.mReader.stopInventory()) {
                loopFlag = false;
                btnStartStop.setText("Start");
                setModeEnabled(true);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_inventory_stop_fail);
                loopFlag = false;
                setModeEnabled(true);
            }
        }
    }

    private void setModeEnabled(boolean enabled) {
        rbSingle.setEnabled(enabled);
        rbAuto.setEnabled(enabled);
    }

    @Override
    public void myOnKeyDwon() {
        if (inventoryFlag == 0) {
            startScan();
        } else if (!loopFlag) {
            startScan();
        } else {
            stopInventory();
        }
    }
}
