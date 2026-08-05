package com.example.uhf.fragment;


import android.app.AlertDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TextView;

import com.example.uhf.R;
import com.example.uhf.activity.UHFMainActivity;
import com.example.uhf.tools.StringUtils;
import com.example.uhf.tools.UIHelper;
import com.rscja.deviceapi.entity.AntennaPowerEntity;
import com.rscja.deviceapi.entity.AntennaState;
import com.rscja.deviceapi.entity.FastInventoryEntity;
import com.rscja.deviceapi.entity.Gen2Entity;
import com.rscja.deviceapi.entity.InventoryModeEntity;
import com.rscja.deviceapi.enums.AntennaEnum;

import java.util.ArrayList;
import java.util.List;

public class UHFSetFragment extends KeyDownFragment implements OnClickListener {
    private String TAG = "UHFSetFragment";
    private UHFMainActivity mContext;

    private Button btnSetFre;
    private Button btnGetFre;
    private Spinner spMode;

    private LinearLayout ll_freHop;


    private Button btnGetPower;
    private Button btnSetPower1, btnSetPower2, btnSetPower3, btnSetPower4;
    private Button btnSetPower5, btnSetPower6, btnSetPower7, btnSetPower8;

    private Spinner spCountMode;
    private EditText etStartAddress;
    private EditText etLength;
    private Button btnSetCountMode, btnGetCountMode;

    private Spinner spPower1;
    private Spinner spPower2;
    private Spinner spPower3;
    private Spinner spPower4;
    private Spinner spPower5;
    private Spinner spPower6;
    private Spinner spPower7;
    private Spinner spPower8;


    private Spinner spFreHop; //频点列表
    private Button btnSetFreHop; //设置频点设置


    private Button btnSetAgreement; //设置协议
    private Spinner SpinnerAgreement; //协议列表

    private Button btnSetLinkParams; //设置链路参数
    private Button btnGetLinkParams; //获取链路参数
    private Spinner splinkParams; //链路参数列表
    private int[] arrayLinkValue;

    private CheckBox cbTagFocus; //打开tagFocus
    private CheckBox cbFastID; //打开FastID

    private CheckBox cbAntAll;

    private RadioButton rb_Brazil; // 巴西频点
    private RadioButton rb_America; // 美国频点
    private RadioButton rb_Others; //其他频点
    private ArrayAdapter adapter; //频点列表适配器

    private DisplayMetrics metrics;
    private AlertDialog dialog;

    private Button btSetAnt, btGetAnt;
    private CheckBox cbAnt1, cbAnt2, cbAnt3, cbAnt4, cbAnt5, cbAnt6, cbAnt7, cbAnt8;

    private CheckBox cbContinuousWave, cbBuzzer;

    private Button btnSetFastInventory ,btnGetFastInventory;

    private Button btnOutput3On, btnOutput3Off, btnOutput4On, btnOutput4Off, btnInputStatus;
    Spinner spSessionID, spInventoried,spFastInventory;

    Button btnSetSession, btnGetSession;
    private static final int GET_FRE = 1;
    private static final int GET_PWM = 2;
    private static final int GET_LINK_PARAMS = 3;
    private static final int GET_ANT = 4;
    private static final int GET_POWER = 5;
    private static final int GET_COUNT_MODE = 15;

    private static final int GET_CW = 7;
    private Handler mHandler = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case GET_FRE:
                    int idx = (int) msg.obj;
                    if (idx != -1) {
                        int count = spMode.getCount();
                        spMode.setSelection(idx > count - 1 ? count - 1 : idx);
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.uhf_msg_read_frequency_succ);
                    } else if (msg.arg1 == 1) {
                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_read_frequency_fail);
                    }
                    break;

                case GET_LINK_PARAMS:
                    int link = (int) msg.obj;
                    Log.e(TAG, "getLinkParams=" + link);
                    if (link != -1) {

                        for (int i = 0; i < arrayLinkValue.length; i++) {
                            if (arrayLinkValue[i] == link) {
                                int index = i;
                                if (index > getResources().getStringArray(R.array.arrayLink).length - 1) {
                                    if (msg.arg1 == 1) {
                                        UIHelper.ToastMessage(mContext, "RFLink = " + link);
                                    }
                                } else {
                                    if (msg.arg1 == 1) {
                                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_para_succ);
                                    }
                                    splinkParams.setSelection(index);
                                }
                                return;
                            }
                        }

                    } else if (msg.arg1 == 1) {
                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_para_fail);
                    }
                    break;
                case GET_ANT:

                    if (msg.obj == null) {
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_para_fail);
                    } else {
                        List<AntennaState> ant = (List<AntennaState>) msg.obj;
                        for (int k = 0; k < ant.size(); k++) {
                            AntennaState antennaState = ant.get(k);
                            switch (antennaState.getAntennaName()) {
                                case ANT1:
                                    cbAnt1.setChecked(antennaState.isEnable());
                                    break;
                                case ANT2:
                                    cbAnt2.setChecked(antennaState.isEnable());
                                    break;
                                case ANT3:
                                    cbAnt3.setChecked(antennaState.isEnable());
                                    break;
                                case ANT4:
                                    cbAnt4.setChecked(antennaState.isEnable());
                                    break;
                                case ANT5:
                                    cbAnt5.setChecked(antennaState.isEnable());
                                    break;
                                case ANT6:
                                    cbAnt6.setChecked(antennaState.isEnable());
                                    break;
                                case ANT7:
                                    cbAnt7.setChecked(antennaState.isEnable());
                                    break;
                                case ANT8:
                                    cbAnt8.setChecked(antennaState.isEnable());
                                    break;
                            }
                        }
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_para_succ);
                    }
                    break;
                case GET_POWER:
                    List<AntennaPowerEntity> powerList = (List<AntennaPowerEntity>) msg.obj;
                    if (powerList != null) {
                        for (AntennaPowerEntity entity : powerList) {
                            if (entity.getAnt() == AntennaEnum.ANT1) {
                                int ant1Power = entity.getPower();
                                spPower1.setSelection(ant1Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT2) {
                                int ant2Power = entity.getPower();
                                spPower2.setSelection(ant2Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT3) {
                                int ant3Power = entity.getPower();
                                spPower3.setSelection(ant3Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT4) {
                                int ant4Power = entity.getPower();
                                spPower4.setSelection(ant4Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT5) {
                                int ant5Power = entity.getPower();
                                spPower5.setSelection(ant5Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT6) {
                                int ant6Power = entity.getPower();
                                spPower6.setSelection(ant6Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT7) {
                                int ant7Power = entity.getPower();
                                spPower7.setSelection(ant7Power - 1);
                            } else if (entity.getAnt() == AntennaEnum.ANT8) {
                                int ant8Power = entity.getPower();
                                spPower8.setSelection(ant8Power - 1);
                            }
                        }
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.uhf_msg_read_power_succ);
                    } else {
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.uhf_msg_read_power_fail);
                    }
                    break;

                case GET_CW:
                    int flag = (int) msg.obj;
                    if (flag == 1) {
                        cbContinuousWave.setChecked(true);
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(getContext(), R.string.uhf_msg_get_para_succ);
                    } else if (flag == 0) {
                        cbContinuousWave.setChecked(false);
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(getContext(), R.string.uhf_msg_get_para_succ);
                    } else {
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(getContext(), R.string.uhf_msg_get_para_fail);
                    }
                    break;
                case GET_COUNT_MODE:
                    InventoryModeEntity result = (InventoryModeEntity) msg.obj;
                    if (result == null) {
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.msg_free_fail);
                    } else {
                        if (msg.arg1 == 1)
                            UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_succ);
                        int User_prt = result.getUserOffset();
                        int User_len = result.getUserLength();
                        if(spCountMode.getCount()>result.getMode()){
                            spCountMode.setSelection(result.getMode());
                        }

                        if (result.getMode() == 2) {
                            etStartAddress.setText(String.valueOf(User_prt));
                            etLength.setText(String.valueOf(User_len));
                        } else {
                            etStartAddress.setText("");
                            etLength.setText("");
                        }

                    }
                    break;
            }
        }
    };

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.activity_uhfset, container, false);
        inits(root);
        arrayLinkValue = getResources().getIntArray(R.array.arrayLinkValue);
        return root;
    }

    private void inits(View view) {
        initA8Views(view);

         btnSetFastInventory=view.findViewById(R.id.btnSetFastInventory);
         btnGetFastInventory=view.findViewById(R.id.btnGetFastInventory);
         spFastInventory=view.findViewById(R.id.spFastInventory);
         btnGetFastInventory.setOnClickListener(this);
         btnSetFastInventory.setOnClickListener(this);

        spSessionID = view.findViewById(R.id.spSessionID);
        spInventoried = view.findViewById(R.id.spInventoried);
        btnGetSession = view.findViewById(R.id.btnGetSession);
        btnSetSession = view.findViewById(R.id.btnSetSession);

        btnGetSession.setOnClickListener(this);
        btnSetSession.setOnClickListener(this);

        btnOutput3On = (Button) view.findViewById(R.id.btnOutput3On);
        btnOutput3Off = (Button) view.findViewById(R.id.btnOutput3Off);
        btnOutput4On = (Button) view.findViewById(R.id.btnOutput4On);
        btnOutput4Off = (Button) view.findViewById(R.id.btnOutput4Off);
        btnInputStatus = (Button) view.findViewById(R.id.btnInputStatus);

        btnOutput3On.setOnClickListener(this);
        btnOutput3Off.setOnClickListener(this);
        btnOutput4On.setOnClickListener(this);
        btnOutput4Off.setOnClickListener(this);
        btnInputStatus.setOnClickListener(this);


        btnSetFre = (Button) view.findViewById(R.id.BtSetFre);
        btnSetFre.setOnClickListener(new SetFreOnclickListener());
        btnGetFre = (Button) view.findViewById(R.id.BtGetFre);
        btnGetFre.setOnClickListener(new GetFreOnclickListener());


        spMode = (Spinner) view.findViewById(R.id.SpinnerMode);
//        spMode.setOnItemSelectedListener(new MyOnTouchListener());

        ll_freHop = view.findViewById(R.id.ll_freHop);

        btnGetPower = view.findViewById(R.id.btnGetPower);
        btnGetPower.setOnClickListener(this);
        spPower1 = view.findViewById(R.id.spPower1);
        spPower2 = view.findViewById(R.id.spPower2);
        spPower3 = view.findViewById(R.id.spPower3);
        spPower4 = view.findViewById(R.id.spPower4);
        spPower5 = view.findViewById(R.id.spPower5);
        spPower6 = view.findViewById(R.id.spPower6);
        spPower7 = view.findViewById(R.id.spPower7);
        spPower8 = view.findViewById(R.id.spPower8);
        btnSetPower1 = view.findViewById(R.id.btnSetPower1);
        btnSetPower1.setOnClickListener(new SetPowerOnclickListener1());
        btnSetPower2 = view.findViewById(R.id.btnSetPower2);
        btnSetPower2.setOnClickListener(new SetPowerOnclickListener2());
        btnSetPower3 = view.findViewById(R.id.btnSetPower3);
        btnSetPower3.setOnClickListener(new SetPowerOnclickListener3());
        btnSetPower4 = view.findViewById(R.id.btnSetPower4);
        btnSetPower4.setOnClickListener(new SetPowerOnclickListener4());
        btnSetPower5 = view.findViewById(R.id.btnSetPower5);
        btnSetPower5.setOnClickListener(new SetPowerOnclickListener5());
        btnSetPower6 = view.findViewById(R.id.btnSetPower6);
        btnSetPower6.setOnClickListener(new SetPowerOnclickListener6());
        btnSetPower7 = view.findViewById(R.id.btnSetPower7);
        btnSetPower7.setOnClickListener(new SetPowerOnclickListener7());
        btnSetPower8 = view.findViewById(R.id.btnSetPower8);
        btnSetPower8.setOnClickListener(new SetPowerOnclickListener8());


        spFreHop = view.findViewById(R.id.spFreHop);
        btnSetFreHop = view.findViewById(R.id.btnSetFreHop);
        btnSetFreHop.setOnClickListener(this);

        btnSetAgreement = view.findViewById(R.id.btnSetAgreement);
        btnSetAgreement.setOnClickListener(this);
        SpinnerAgreement = view.findViewById(R.id.SpinnerAgreement);
        btnSetLinkParams = view.findViewById(R.id.btnSetLinkParams);
        btnSetLinkParams.setOnClickListener(this);
        btnGetLinkParams = view.findViewById(R.id.btnGetLinkParams);
        btnGetLinkParams.setOnClickListener(this);
        splinkParams = view.findViewById(R.id.splinkParams);

        cbTagFocus = view.findViewById(R.id.cbTagFocus);
        cbFastID = view.findViewById(R.id.cbFastID);


        cbTagFocus.setOnCheckedChangeListener(new OnMyCheckedChangedListener());
        cbFastID.setOnCheckedChangeListener(new OnMyCheckedChangedListener());

        cbContinuousWave = (CheckBox) view.findViewById(R.id.cbContinuousWave);
        cbContinuousWave.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                int flag = cbContinuousWave.isChecked() ? 1 : 0;
                setCW(flag, true);
            }
        });

        rb_Brazil = view.findViewById(R.id.rb_Brazil);
        rb_Brazil.setOnClickListener(this);
        rb_America = view.findViewById(R.id.rb_America);
        rb_America.setOnClickListener(this);
        rb_Others = view.findViewById(R.id.rb_Others);
        rb_Others.setOnClickListener(this);
        rb_Brazil.requestFocus();

        btnGetCountMode = view.findViewById(R.id.btnGetCountMode);
        btnSetCountMode = view.findViewById(R.id.btnSetCountMode);
        btnGetCountMode.setOnClickListener(new GetCountModeOnclickListener());
        btnSetCountMode.setOnClickListener(new SetCountModeOnclickListener());
        etLength = view.findViewById(R.id.etLength);
        etStartAddress = view.findViewById(R.id.etStartAddress);
        spCountMode = view.findViewById(R.id.spCountMode);
    }

    private void initA8Views(View view) {

        cbBuzzer = (CheckBox) view.findViewById(R.id.cbBuzzer);
        cbBuzzer.setOnClickListener(this);

        btSetAnt = (Button) view.findViewById(R.id.btSetAnt);
        btGetAnt = (Button) view.findViewById(R.id.btGetAnt);
        cbAnt1 = (CheckBox) view.findViewById(R.id.cbAnt1);
        cbAnt2 = (CheckBox) view.findViewById(R.id.cbAnt2);
        cbAnt3 = (CheckBox) view.findViewById(R.id.cbAnt3);
        cbAnt4 = (CheckBox) view.findViewById(R.id.cbAnt4);
        cbAnt5 = (CheckBox) view.findViewById(R.id.cbAnt5);
        cbAnt6 = (CheckBox) view.findViewById(R.id.cbAnt6);
        cbAnt7 = (CheckBox) view.findViewById(R.id.cbAnt7);
        cbAnt8 = (CheckBox) view.findViewById(R.id.cbAnt8);
        cbAntAll = (CheckBox) view.findViewById(R.id.cbAntAll);
        btSetAnt.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                List<AntennaState> list = new ArrayList<>();
                list.add(new AntennaState(AntennaEnum.ANT1, cbAnt1.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT2, cbAnt2.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT3, cbAnt3.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT4, cbAnt4.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT5, cbAnt5.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT6, cbAnt6.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT7, cbAnt7.isChecked()));
                list.add(new AntennaState(AntennaEnum.ANT8, cbAnt8.isChecked()));
                if (mContext.mReader.setANT(list)) {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
                } else {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
                }
            }
        });
        cbAntAll.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                cbAnt1.setChecked(cbAntAll.isChecked());
                cbAnt2.setChecked(cbAntAll.isChecked());
                cbAnt3.setChecked(cbAntAll.isChecked());
                cbAnt4.setChecked(cbAntAll.isChecked());
                cbAnt5.setChecked(cbAntAll.isChecked());
                cbAnt6.setChecked(cbAntAll.isChecked());
                cbAnt7.setChecked(cbAntAll.isChecked());
                cbAnt8.setChecked(cbAntAll.isChecked());
            }
        });
        btGetAnt.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                getAnt(true);
            }
        });
    }

    @Override
    public void onResume() {
        super.onResume();
        /*
           开启子线程获取参数，Handler更新UI,防止fragment打开卡顿
		 */
//        new Thread() {
//            @Override
//            public void run() {

        getFre(false);

        getLinkParams(false);
        getAnt(false);
        OnClick_GetPower(false);
//
        getSession();
        getInventoryMode(false);
        getFastInventory(false);

        //      }
        //   }.start();
    }

    private void getAnt(boolean isToast) {
        List<AntennaState> ant = mContext.mReader.getANT();
        Message msg = mHandler.obtainMessage(GET_ANT, ant);
        msg.arg1 = isToast ? 1 : 0;
        mHandler.sendMessage(msg);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        mContext = (UHFMainActivity) getActivity();
        cbBuzzer.setChecked(mContext.isBuzzer);
    }

    /**
     * 工作模式下拉列表点击选中item监听
     */
    public class MyOnTouchListener implements AdapterView.OnItemSelectedListener {

        @Override
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            if (spMode.getSelectedItem().toString().equals(getString(R.string.United_States_Standard))) {
                ll_freHop.setVisibility(View.VISIBLE);
                rb_America.setChecked(true); //默认美国频点
            } else {
                ll_freHop.setVisibility(View.GONE);
            }
        }

        @Override
        public void onNothingSelected(AdapterView<?> parent) {

        }
    }

    public class SetFreOnclickListener implements OnClickListener {

        @Override
        public void onClick(View v) {
            int[] frequencyArray = getResources().getIntArray(R.array.arrayFrequencyValue);
            int frequency = frequencyArray[spMode.getSelectedItemPosition()];

            int mode = frequency;
            if (mContext.mReader.setFrequencyMode((byte) mode)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_frequency_succ);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_frequency_fail);
//                mContext.playSound(2);
            }
        }
    }


    public void getFre(boolean isToast) {
        int frequency = mContext.mReader.getFrequencyMode();
        int idx=-1;
        int[] frequencyArray = getResources().getIntArray(R.array.arrayFrequencyValue);
        for (int i = 0; i < frequencyArray.length; i++) {
            if (frequencyArray[i] == frequency) {
                idx=i;
            }
        }


        Message msg = mHandler.obtainMessage(GET_FRE, idx);
        msg.arg1 = isToast ? 1 : 0;
        mHandler.sendMessage(msg);
    }


    /**
     * 获取链路参数
     */
    public void getLinkParams(boolean isToast) {
        int idx = mContext.mReader.getRFLink();
        Message msg = mHandler.obtainMessage(GET_LINK_PARAMS, idx);
        msg.arg1 = isToast ? 1 : 0;
        mHandler.sendMessage(msg);
    }


    public class GetFreOnclickListener implements OnClickListener {

        @Override
        public void onClick(View v) {
            getFre(true);
        }
    }

    public class OnMyCheckedChangedListener implements CompoundButton.OnCheckedChangeListener {

        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            switch (buttonView.getId()) {
                case R.id.cbTagFocus:
                    if (mContext.mReader.setTagFocus(isChecked)) {
                        if (isChecked) {
                            cbTagFocus.setText(R.string.tagFocus_off);
                        } else {
                            cbTagFocus.setText(R.string.tagFocus);
                        }
                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
                    } else {
                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
//                        mContext.playSound(2);
                    }
                    break;
                case R.id.cbFastID:
                    if (mContext.mReader.setFastID(isChecked)) {
                        if (isChecked) {
                            cbFastID.setText(R.string.fastID_off);
                        } else {
                            cbFastID.setText(R.string.fastID);
                        }
                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
                    } else {
                        UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
//                        mContext.playSound(2);
                    }
                    break;

            }
        }
    }

    public void OnClick_GetPower(boolean showToast) {
        List<AntennaPowerEntity> iPower = mContext.mReader.getAntennaPower();
        Message msg = mHandler.obtainMessage(GET_POWER, iPower);
        msg.arg1 = showToast ? 1 : 0;
        mHandler.sendMessage(msg);
        Log.i(TAG, "OnClick_GetPower() iPower=" + iPower);
    }


    /**
     * 设置频点
     *
     * @param value 频点数值
     * @return 是否设置成功
     */
    private boolean setFreHop(float value) {
        boolean result = mContext.mReader.setFreHop(value);
        if (result) {
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_frehop_succ);
        } else {
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_frehop_fail);
//            mContext.playSound(2);
        }
        return result;
    }

    @Override
    public void onClick(View v) {
        // TODO Auto-generated method stub
        switch (v.getId()) {
            case R.id.btnSetFreHop: //设置频点
//			showFrequencyDialog();
                View view = spFreHop.getSelectedView();
                if (view instanceof TextView) {
                    String freHop = ((TextView) view).getText().toString().trim();
                    setFreHop(Float.valueOf(freHop)); //设置频点
                }
                break;

            case R.id.btnSetAgreement: //设置协议
                if (mContext.mReader.setProtocol(SpinnerAgreement.getSelectedItemPosition())) {
                    UIHelper.ToastMessage(mContext, R.string.setAgreement_succ);
                } else {
                    UIHelper.ToastMessage(mContext, R.string.setAgreement_fail);
//                    mContext.playSound(2);
                }
                break;

            case R.id.btnSetLinkParams: //设置链路参数
                int index = splinkParams.getSelectedItemPosition();
                int link = arrayLinkValue[index];
                Log.e(TAG, "setLinkParams=" + link);

                if (mContext.mReader.setRFLink(link)) {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
                } else {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
//                    mContext.playSound(2);
                }
                break;
            case R.id.btnGetLinkParams: //获取链路参数
                getLinkParams(true);
                break;

            case R.id.btnGetPower:
                OnClick_GetPower(true);
                break;
            case R.id.rb_Brazil:
                onClick_rbBRA(v);
                break;
            case R.id.rb_America:
                onClick_rbAmerica(v);
                break;
            case R.id.rb_Others:
                onClick_rbOthers(v);
                break;
            case R.id.cbBuzzer:
                mContext.isBuzzer = cbBuzzer.isChecked();
                break;
            case R.id.btnGetSession:
                if (getSession()) {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_para_succ);
                } else {
                    UIHelper.ToastMessage(mContext, R.string.uhf_msg_get_para_fail);
                }
                break;
            case R.id.btnSetSession:
                setSession();
                break;
            case R.id.btnSetFastInventory:
                setFastInventory();
                break;
            case R.id.btnGetFastInventory:
                getFastInventory(true);
                break;
            default:
                break;
        }
    }

    /**
     * 显示频点设置
     */
    private void showFrequencyDialog() {
        if (dialog == null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
//	        builder.setTitle(R.string.btSetFrequency);
            View view = getActivity().getLayoutInflater().inflate(R.layout.uhf_dialog_frequency, null);
            ListView listView = (ListView) view.findViewById(R.id.listView_frequency);
            ImageView iv = (ImageView) view.findViewById(R.id.iv_dismissDialog);
            iv.setOnClickListener(new OnClickListener() {

                @Override
                public void onClick(View v) {
                    // TODO Auto-generated method stub
                    dialog.dismiss();
                }
            });

            String[] strArr = getResources().getStringArray(R.array.arrayFreHop);
            listView.setAdapter(new ArrayAdapter<String>(getActivity(), R.layout.item_text1, strArr));
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {

                @Override
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    // TODO Auto-generated method stub
                    if (view instanceof TextView) {
                        TextView tv = (TextView) view;
                        float value = Float.valueOf(tv.getText().toString().trim());
                        setFreHop(value); //设置频点
                        dialog.dismiss();
                    }
                }

            });

            builder.setView(view);
            dialog = builder.create();
            dialog.show();
            dialog.setCanceledOnTouchOutside(false);

            WindowManager.LayoutParams params = dialog.getWindow().getAttributes();
            params.width = getWindowWidth() - 100;
            params.height = getWindowHeight() - 200;
            dialog.getWindow().setAttributes(params);
        } else {
            dialog.show();
        }
    }

    /**
     * 获取屏幕宽度
     *
     * @return
     */
    public int getWindowWidth() {
        if (metrics == null) {
            metrics = new DisplayMetrics();
            getActivity().getWindowManager().getDefaultDisplay().getMetrics(metrics);
        }
        return metrics.widthPixels;
    }

    /**
     * 获取屏幕高度
     *
     * @return
     */
    public int getWindowHeight() {
        if (metrics == null) {
            metrics = new DisplayMetrics();
            getActivity().getWindowManager().getDefaultDisplay().getMetrics(metrics);
        }
        return metrics.heightPixels;
    }

    private void updateFreHop(int arrayResId) {
        ArrayAdapter adapter = ArrayAdapter.createFromResource(mContext, arrayResId, android.R.layout.simple_spinner_item);
        spFreHop.setAdapter(adapter);
        adapter.notifyDataSetChanged();
    }

    public void onClick_rbBRA(View view) {
        updateFreHop(R.array.arrayFreHop_bra);
    }

    public void onClick_rbAmerica(View view) {
        updateFreHop(R.array.arrayFreHop_us);
    }

    public void onClick_rbOthers(View view) {
        updateFreHop(R.array.arrayFreHop);
    }







    /**
     * 设置连续波
     *
     * @param flag
     * @param showToast
     */
    private void setCW(int flag, boolean showToast) {
        boolean res = mContext.mReader.setCW(flag);
        if (showToast) {
            if (res) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
            }
        }
    }



    private void sendMsg(int what, Object obj, int arg1) {
        Message msg = mHandler.obtainMessage(what, obj);
        msg.arg1 = arg1;
        mHandler.sendMessage(msg);
    }

    private boolean getSession() {
        Gen2Entity p = mContext.mReader.getGen2();
        if (p != null) {

            spSessionID.setSelection(p.getQuerySession());
            spInventoried.setSelection(p.getQueryTarget());
            return true;
        }
        return false;
    }

    private void setSession() {
        int seesionid = spSessionID.getSelectedItemPosition();
        int inventoried = spInventoried.getSelectedItemPosition();
        if (seesionid < 0 || inventoried < 0) {
            return;
        }
        Gen2Entity p = mContext.mReader.getGen2();
        if (p != null) {
            p.setQueryTarget(inventoried);
            p.setQuerySession(seesionid);
            if (mContext.mReader.setGen2(p)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
            }
        } else {
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
        }
    }

    //设置天线功率
    private class SetPowerOnclickListener1 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower1.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT1, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener2 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower2.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT2, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener3 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower3.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT3, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener4 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower4.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT4, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener5 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower5.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT5, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener6 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower6.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT6, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener7 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower7.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT7, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    private class SetPowerOnclickListener8 implements OnClickListener {
        @Override
        public void onClick(View v) {
            int iPower = spPower8.getSelectedItemPosition() + 1;
            if (!mContext.mReader.setAntennaPower(AntennaEnum.ANT8, iPower)) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_fail);
                return;
            }
            UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_power_succ);
        }
    }

    //获取盘点模式
    private class GetCountModeOnclickListener implements OnClickListener {
        @Override
        public void onClick(View v) {
            getInventoryMode(true);
        }
    }

    //设置盘点模式
    private class SetCountModeOnclickListener implements OnClickListener {
        @Override
        public void onClick(View v) {
            setCountMode();
        }
    }

    private void getInventoryMode(boolean isToast) {
        InventoryModeEntity result = mContext.mReader.getEPCAndTIDUserMode();
        Log.i("resultCountMode", "getCountMode() result=" + result);
        sendMsg(GET_COUNT_MODE, result, isToast ? 1 : 0);
    }

    private void setCountMode() {
        if (spCountMode.getSelectedItemPosition() == 0) {
            boolean result1 = mContext.mReader.setEPCMode();
            if (!result1) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
            }
        } else if (spCountMode.getSelectedItemPosition() == 1) {
            boolean result2 = mContext.mReader.setEPCAndTIDMode();
            if (!result2) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
            }
        } else if (spCountMode.getSelectedItemPosition() == 2) {
            String User_Prt = etStartAddress.getText().toString();
            String User_Len = etLength.getText().toString();

            if (StringUtils.isEmpty(User_Prt)) {
                UIHelper.ToastMessage(mContext, R.string.count_mode_start_address);
                return;
            }
            if (StringUtils.isEmpty(User_Len)) {
                UIHelper.ToastMessage(mContext, R.string.count_mode_length);
                return;
            }
            boolean result3 = mContext.mReader.setEPCAndTIDUserMode(Integer.parseInt(User_Prt), Integer.parseInt(User_Len));
            if (result3) {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_succ);
            } else {
                UIHelper.ToastMessage(mContext, R.string.uhf_msg_set_fail);
            }
        }
    }
    private void getFastInventory(boolean showToast) {
        FastInventoryEntity entity = mContext.mReader.getFastInventoryMode();
        // Log.d("TAG", "getFastInventory: " + entity);
        mHandler.post(() -> {
            if (entity == null) {
                if (showToast) mContext.showToast(R.string.uhf_msg_get_fail);
                return;
            }
            if (entity.getCr() < spFastInventory.getCount()) {
                spFastInventory.setSelection(entity.getCr());
                if (showToast) mContext.showToast(R.string.uhf_msg_get_succ);
            } else {
                if (!showToast) return;
                if (entity.getCr() > 0) {
                    mContext.showToast("Cr = " + entity.getCr());
                } else {
                    mContext.showToast(R.string.uhf_msg_get_fail);
                }
            }
        });
    }
    public void setFastInventory() {
        FastInventoryEntity entity = new FastInventoryEntity(spFastInventory.getSelectedItemPosition());
        boolean flag = mContext.mReader.setFastInventoryMode(entity);
        mContext.showToast(flag ? R.string.uhf_msg_set_succ : R.string.uhf_msg_set_fail);
    }
}
