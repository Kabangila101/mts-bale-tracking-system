.class public Lcom/UHF/scanlable/OtgUtils;
.super Ljava/lang/Object;
.source "OtgUtils.java"


# static fields
.field private static final NODE_53C_1:Ljava/lang/String; = "/sys/devices/soc/soc:sectrl/ugp_ctrl/gp_pogo_5v_ctrl/enable"

.field private static final NODE_53C_2:Ljava/lang/String; = "/sys/devices/soc/soc:sectrl/ugp_ctrl/gp_otg_en_ctrl/enable"

.field private static final NODE_53_1:Ljava/lang/String; = "/sys/devices/soc/c170000.serial/pogo_uart"

.field private static final NODE_53_2:Ljava/lang/String; = "/sys/devices/virtual/Usb_switch/usbswitch/function_otg_en"

.field private static final NOde_53X:Ljava/lang/String; = "/sys/kernel/kobject_pogo_otg_status/pogo_otg_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static set53GPIOEnabled(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enable"
        }
    .end annotation

    .line 19
    new-instance v0, Landroid/device/DeviceManager;

    invoke-direct {v0}, Landroid/device/DeviceManager;-><init>()V

    const-string v1, "pwv.project"

    invoke-virtual {v0, v1}, Landroid/device/DeviceManager;->getSettingProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Landroid/device/DeviceManager;

    invoke-direct {v1}, Landroid/device/DeviceManager;-><init>()V

    const-string v2, "persist.sys.pogopin.otg5v.en"

    invoke-virtual {v1, v2}, Landroid/device/DeviceManager;->getSettingProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/16 v4, 0x31

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    new-array v4, v2, [B

    const/16 v6, 0x30

    aput-byte v6, v4, v5

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "SQ53Q"

    .line 28
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v8, "/sys/devices/soc/soc:sectrl/ugp_ctrl/gp_pogo_5v_ctrl/enable"

    const-string v9, "/sys/devices/soc/c170000.serial/pogo_uart"

    if-nez v7, :cond_a

    :try_start_1
    const-string v7, "SQ53Z"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v7, "SQ53"

    .line 34
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-array v0, v2, [B

    const/16 v1, 0x32

    aput-byte v1, v0, v5

    .line 36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v7, "/sys/devices/virtual/Usb_switch/usbswitch/function_otg_en"

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p0, :cond_2

    move-object v4, v0

    .line 39
    :cond_2
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v3

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    move-object v6, v1

    move-object v0, v3

    goto/16 :goto_13

    :catch_0
    move-exception p0

    move-object v6, v1

    move-object v0, v3

    goto/16 :goto_f

    .line 41
    :cond_3
    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 42
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p0, :cond_4

    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v4

    .line 44
    :goto_1
    :try_start_5
    invoke-virtual {v7, v1}, Ljava/io/FileOutputStream;->write([B)V

    const-string v1, "SQ53X"

    .line 46
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/sys/kernel/kobject_pogo_otg_status/pogo_otg_status"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 48
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v1, v7

    goto :goto_9

    :catchall_1
    move-exception p0

    move-object v0, v6

    move-object v6, v7

    goto/16 :goto_13

    :catch_1
    move-exception p0

    move-object v0, v6

    move-object v6, v7

    goto/16 :goto_f

    .line 51
    :cond_7
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz p0, :cond_8

    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v0, v4

    .line 52
    :goto_3
    :try_start_7
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 53
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v7, "/sys/devices/soc/soc:sectrl/ugp_ctrl/gp_otg_en_ctrl/enable"

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p0, :cond_9

    goto :goto_4

    :cond_9
    move-object v3, v4

    .line 54
    :goto_4
    :try_start_8
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    .line 29
    :cond_a
    :goto_5
    :try_start_9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz p0, :cond_b

    move-object v0, v3

    goto :goto_6

    :cond_b
    move-object v0, v4

    .line 30
    :goto_6
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 31
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p0, :cond_c

    goto :goto_7

    :cond_c
    move-object v3, v4

    .line 32
    :goto_7
    :try_start_b
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_8
    move-object v6, v0

    :goto_9
    if-eqz v1, :cond_d

    .line 64
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :catch_2
    move-exception p0

    goto :goto_b

    :cond_d
    :goto_a
    if-eqz v6, :cond_e

    .line 67
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_c

    .line 70
    :goto_b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_c
    return v2

    :catchall_2
    move-exception p0

    goto :goto_d

    :catch_3
    move-exception p0

    goto :goto_e

    :catchall_3
    move-exception p0

    move-object v0, v6

    :goto_d
    move-object v6, v1

    goto :goto_13

    :catch_4
    move-exception p0

    move-object v0, v6

    :goto_e
    move-object v6, v1

    goto :goto_f

    :catchall_4
    move-exception p0

    move-object v0, v6

    goto :goto_13

    :catch_5
    move-exception p0

    move-object v0, v6

    .line 59
    :goto_f
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v6, :cond_f

    .line 64
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_10

    :catch_6
    move-exception p0

    goto :goto_11

    :cond_f
    :goto_10
    if-eqz v0, :cond_10

    .line 67
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_12

    .line 70
    :goto_11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_12
    return v5

    :catchall_5
    move-exception p0

    :goto_13
    if-eqz v6, :cond_11

    .line 64
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_14

    :catch_7
    move-exception v0

    goto :goto_15

    :cond_11
    :goto_14
    if-eqz v0, :cond_12

    .line 67
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_16

    .line 70
    :goto_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    :cond_12
    :goto_16
    throw p0
.end method
