.class public Lcom/UHF/scanlable/AssignActivity;
.super Landroid/app/Activity;
.source "AssignActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/UHF/scanlable/AssignActivity$TagListAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCAN_POWER:Ljava/lang/String; = "10"

.field private static final PREFS_NAME:Ljava/lang/String; = "assign_prefs"

.field private static final PREF_SCAN_POWER:Ljava/lang/String; = "scan_power"

.field private static final PREF_SERVER_IP:Ljava/lang/String; = "server_ip"

.field private static final QUIET_CHECK_MS:J = 0x190L

.field private static final SCAN_POLL_INTERVAL_MS:J = 0x96L

.field private static final SCAN_TIMEOUT_MS:J = 0x1388L

.field private static final SETTLE_WINDOW_MS:J = 0x190L

.field private static final TAGLIST_REFRESH_MS:J = 0x9c4L


# instance fields
.field private final assignedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private btnAssign:Landroid/widget/Button;

.field private btnSaveIp:Landroid/widget/Button;

.field private btnScan:Landroid/widget/Button;

.field private captureWindowEndsAt:J

.field private capturedOnce:Z

.field private etBaleNumber:Landroid/widget/EditText;

.field private etFarm:Landroid/widget/EditText;

.field private etFarmer:Landroid/widget/EditText;

.field private etScanPower:Landroid/widget/EditText;

.field private etServerIp:Landroid/widget/EditText;

.field private etTagId:Landroid/widget/EditText;

.field private etTid:Landroid/widget/EditText;

.field private etTruck:Landroid/widget/EditText;

.field private etWeight:Landroid/widget/EditText;

.field private final handler:Landroid/os/Handler;

.field private keyPress:Z

.field private lvAssignedTags:Landroid/widget/ListView;

.field private powerWasLowered:Z

.field private refreshLoopRunning:Z

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private savedPowerBeforeScan:B

.field private scanBaselineAt:J

.field private final scanPollRunnable:Ljava/lang/Runnable;

.field private scanStartedAt:J

.field private scanning:Z

.field private spGrade:Landroid/widget/Spinner;

.field private tagListAdapter:Lcom/UHF/scanlable/AssignActivity$TagListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->keyPress:Z

    .line 74
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanning:Z

    const-wide/16 v1, 0x0

    .line 75
    iput-wide v1, p0, Lcom/UHF/scanlable/AssignActivity;->scanBaselineAt:J

    .line 76
    iput-wide v1, p0, Lcom/UHF/scanlable/AssignActivity;->scanStartedAt:J

    .line 77
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->capturedOnce:Z

    .line 78
    iput-wide v1, p0, Lcom/UHF/scanlable/AssignActivity;->captureWindowEndsAt:J

    .line 79
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->powerWasLowered:Z

    .line 80
    iput-byte v0, p0, Lcom/UHF/scanlable/AssignActivity;->savedPowerBeforeScan:B

    .line 81
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->refreshLoopRunning:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/UHF/scanlable/AssignActivity$1;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/AssignActivity$1;-><init>(Lcom/UHF/scanlable/AssignActivity;)V

    iput-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanPollRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/UHF/scanlable/AssignActivity$2;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/AssignActivity$2;-><init>(Lcom/UHF/scanlable/AssignActivity;)V

    iput-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->refreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/UHF/scanlable/AssignActivity;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->pollForScannedTag()V

    return-void
.end method

.method static synthetic access$100(Lcom/UHF/scanlable/AssignActivity;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->fetchTags()V

    return-void
.end method

.method static synthetic access$1000(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->applyTagsResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/UHF/scanlable/AssignActivity;)Ljava/util/List;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->deleteTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/UHF/scanlable/AssignActivity;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/UHF/scanlable/AssignActivity;->refreshLoopRunning:Z

    return p0
.end method

.method static synthetic access$300(Lcom/UHF/scanlable/AssignActivity;)Landroid/os/Handler;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/UHF/scanlable/AssignActivity;)Ljava/lang/String;
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->baseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-static {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->postJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/UHF/scanlable/AssignActivity;)Landroid/widget/Button;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/UHF/scanlable/AssignActivity;->btnAssign:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->handleAssignResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 45
    invoke-static {p0}, Lcom/UHF/scanlable/AssignActivity;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private applyTagsResult(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 442
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 444
    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_20

    .line 445
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 447
    :cond_20
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->tagListAdapter:Lcom/UHF/scanlable/AssignActivity$TagListAdapter;

    invoke-virtual {p1}, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->notifyDataSetChanged()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method private baseUrl()Ljava/lang/String;
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etServerIp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "http://"

    if-eqz v1, :cond_26

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":5000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteTag(Ljava/lang/String;)V
    .registers 4

    .line 454
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/UHF/scanlable/AssignActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/UHF/scanlable/AssignActivity$5;-><init>(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private fetchTags()V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etServerIp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 423
    :cond_15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/UHF/scanlable/AssignActivity$4;

    invoke-direct {v1, p0}, Lcom/UHF/scanlable/AssignActivity$4;-><init>(Lcom/UHF/scanlable/AssignActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 434
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 506
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_31
    .catchall {:try_start_1 .. :try_end_c} :catchall_27

    :try_start_c
    const-string v1, "GET"

    .line 508
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0xbb8

    .line 509
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 510
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 511
    invoke-static {p0}, Lcom/UHF/scanlable/AssignActivity;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_25
    .catchall {:try_start_c .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_22

    .line 516
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_22
    return-object v0

    :catchall_23
    move-exception v0

    goto :goto_2b

    :catch_25
    nop

    goto :goto_33

    :catchall_27
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_2b
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 518
    :cond_30
    throw v0

    :catch_31
    nop

    move-object p0, v0

    :goto_33
    if-eqz p0, :cond_38

    .line 516
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_38
    return-object v0
.end method

.method private handleAssignResult(Ljava/lang/String;)V
    .registers 7

    const-string v0, ""

    const-string v1, "Assign failed: "

    const/4 v2, 0x1

    if-nez p1, :cond_15

    .line 396
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Assign failed: no response from server"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 400
    :cond_15
    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ok"

    const/4 v4, 0x0

    .line 401
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 402
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Bale assigned"

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 403
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etTagId:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etTid:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etBaleNumber:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etWeight:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->fetchTags()V

    goto :goto_76

    .line 409
    :cond_48
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    const-string v4, "unknown error"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_68} :catch_69

    goto :goto_76

    .line 412
    :catch_69
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Assign failed: bad response"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_76
    return-void
.end method

.method private loadScanPower()Ljava/lang/String;
    .registers 4

    const-string v0, "assign_prefs"

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/UHF/scanlable/AssignActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "scan_power"

    const-string v2, "10"

    .line 311
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadServerIp()Ljava/lang/String;
    .registers 4

    const-string v0, "assign_prefs"

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/UHF/scanlable/AssignActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server_ip"

    const-string v2, ""

    .line 321
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lowerScanPower()V
    .registers 10

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->powerWasLowered:Z

    const/4 v1, 0x2

    :try_start_4
    new-array v3, v1, [B

    const/4 v1, 0x1

    new-array v8, v1, [B

    new-array v5, v1, [B

    new-array v6, v1, [B

    new-array v7, v1, [B

    .line 231
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/rfid/trans/ReaderHelp;->GetReaderInformation([B[B[B[B[B)I

    move-result v2

    if-nez v2, :cond_2b

    aget-byte v0, v8, v0

    .line 232
    iput-byte v0, p0, Lcom/UHF/scanlable/AssignActivity;->savedPowerBeforeScan:B

    .line 233
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->parseScanPower()I

    move-result v0

    .line 234
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lcom/rfid/trans/ReaderHelp;->SetRfPower(B)I

    move-result v0

    if-nez v0, :cond_2b

    .line 235
    iput-boolean v1, p0, Lcom/UHF/scanlable/AssignActivity;->powerWasLowered:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    return-void
.end method

.method private parseScanPower()I
    .registers 3

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etScanPower:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_1c

    if-gez v0, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    const/16 v1, 0x21

    if-le v0, v1, :cond_1b

    return v1

    :cond_1b
    return v0

    :catch_1c
    const-string v0, "10"

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private pollForScannedTag()V
    .registers 8

    .line 266
    iget-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanning:Z

    if-nez v0, :cond_5

    return-void

    .line 269
    :cond_5
    sget-wide v0, Lcom/UHF/scanlable/TagCapture;->lastAt:J

    iget-wide v2, p0, Lcom/UHF/scanlable/AssignActivity;->scanBaselineAt:J

    const-wide/16 v4, 0x96

    cmp-long v6, v0, v2

    if-lez v6, :cond_47

    .line 274
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etTagId:Landroid/widget/EditText;

    sget-object v1, Lcom/UHF/scanlable/TagCapture;->lastEpc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etTid:Landroid/widget/EditText;

    sget-object v1, Lcom/UHF/scanlable/TagCapture;->lastTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget-wide v0, Lcom/UHF/scanlable/TagCapture;->lastAt:J

    iput-wide v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanBaselineAt:J

    .line 277
    iget-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->capturedOnce:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->capturedOnce:Z

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x190

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/UHF/scanlable/AssignActivity;->captureWindowEndsAt:J

    .line 281
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/UHF/scanlable/AssignActivity;->captureWindowEndsAt:J

    cmp-long v6, v0, v2

    if-ltz v6, :cond_3f

    .line 282
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->stopScanPoll()V

    return-void

    .line 285
    :cond_3f
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->scanPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 288
    :cond_47
    iget-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->capturedOnce:Z

    if-eqz v0, :cond_59

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/UHF/scanlable/AssignActivity;->captureWindowEndsAt:J

    cmp-long v6, v0, v2

    if-ltz v6, :cond_59

    .line 289
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->stopScanPoll()V

    return-void

    .line 292
    :cond_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/UHF/scanlable/AssignActivity;->scanStartedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v6, v0, v2

    if-lez v6, :cond_78

    .line 293
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->stopScanPoll()V

    .line 294
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No tag detected, try again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 297
    :cond_78
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->scanPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static postJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 482
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_51
    .catchall {:try_start_1 .. :try_end_c} :catchall_4a

    :try_start_c
    const-string v1, "POST"

    .line 484
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 485
    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xbb8

    .line 486
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    .line 488
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 489
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 490
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 491
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 492
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 493
    invoke-static {p0}, Lcom/UHF/scanlable/AssignActivity;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_48
    .catchall {:try_start_c .. :try_end_3f} :catchall_45

    if-eqz p0, :cond_44

    .line 498
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_44
    return-object p1

    :catchall_45
    move-exception p1

    move-object v0, p0

    goto :goto_4b

    :catch_48
    nop

    goto :goto_53

    :catchall_4a
    move-exception p1

    :goto_4b
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 500
    :cond_50
    throw p1

    :catch_51
    nop

    move-object p0, v0

    :goto_53
    if-eqz p0, :cond_58

    .line 498
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_58
    return-object v0
.end method

.method private static readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_11

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_11

    .line 523
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_15
    if-nez p0, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 527
    :cond_19
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 528
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    :goto_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 531
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 533
    :cond_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 534
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restoreScanPower()V
    .registers 3

    .line 244
    iget-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->powerWasLowered:Z

    if-eqz v0, :cond_e

    .line 246
    :try_start_4
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    iget-byte v1, p0, Lcom/UHF/scanlable/AssignActivity;->savedPowerBeforeScan:B

    invoke-virtual {v0, v1}, Lcom/rfid/trans/ReaderHelp;->SetRfPower(B)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->powerWasLowered:Z

    :cond_e
    return-void
.end method

.method private saveScanPower(Ljava/lang/String;)V
    .registers 4

    const-string v0, "assign_prefs"

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/UHF/scanlable/AssignActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scan_power"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveServerIp(Ljava/lang/String;)V
    .registers 4

    const-string v0, "assign_prefs"

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/UHF/scanlable/AssignActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server_ip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startScanCapture()V
    .registers 9

    .line 187
    iget-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanning:Z

    if-eqz v0, :cond_5

    return-void

    .line 190
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    sget-wide v2, Lcom/UHF/scanlable/TagCapture;->lastAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gez v7, :cond_22

    .line 196
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reader already active -- if Auto mode is running on the Scan tab, stop it there first"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 201
    :cond_22
    iput-boolean v6, p0, Lcom/UHF/scanlable/AssignActivity;->scanning:Z

    const/4 v2, 0x0

    .line 202
    iput-boolean v2, p0, Lcom/UHF/scanlable/AssignActivity;->capturedOnce:Z

    .line 203
    sget-wide v3, Lcom/UHF/scanlable/TagCapture;->lastAt:J

    iput-wide v3, p0, Lcom/UHF/scanlable/AssignActivity;->scanBaselineAt:J

    .line 204
    iput-wide v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanStartedAt:J

    .line 205
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etScanPower:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/UHF/scanlable/AssignActivity;->saveScanPower(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->lowerScanPower()V

    .line 208
    :try_start_41
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->ScanRfid()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_50

    .line 215
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->scanPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 210
    :catch_50
    iput-boolean v2, p0, Lcom/UHF/scanlable/AssignActivity;->scanning:Z

    .line 211
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->restoreScanPower()V

    .line 212
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Scan failed to start"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private stopScanPoll()V
    .registers 3

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->scanning:Z

    .line 302
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->capturedOnce:Z

    .line 303
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->scanPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->restoreScanPower()V

    return-void
.end method

.method private submitAssign()V
    .registers 9

    .line 341
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etTagId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->etBaleNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/UHF/scanlable/AssignActivity;->etServerIp:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 346
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Set the server IP first"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 349
    :cond_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 350
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Scan a tag first"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 353
    :cond_57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 354
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bale Number is required"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 358
    :cond_6b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_70
    const-string v4, "tag_id"

    .line 360
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etTid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_92

    const-string v4, "tid"

    .line 363
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_92
    const-string v0, "bale_number"

    .line 365
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "grade"

    .line 366
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->spGrade:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a4

    const-string v1, ""

    goto :goto_ae

    :cond_a4
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->spGrade:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_ae
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "truck"

    .line 367
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->etTruck:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "farm"

    .line 368
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->etFarm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "farmer"

    .line 369
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->etFarmer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->etWeight:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weight_g"

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_103

    const-wide/16 v4, 0x0

    goto :goto_10e

    :cond_103
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    :goto_10e
    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_111} :catch_124

    .line 378
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->btnAssign:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/UHF/scanlable/AssignActivity$3;

    invoke-direct {v1, p0, v2}, Lcom/UHF/scanlable/AssignActivity$3;-><init>(Lcom/UHF/scanlable/AssignActivity;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 391
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 374
    :catch_124
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Invalid form data"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->btnSaveIp:Landroid/widget/Button;

    if-ne p1, v0, :cond_24

    .line 157
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etServerIp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->saveServerIp(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Server IP saved"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_33

    .line 159
    :cond_24
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->btnScan:Landroid/widget/Button;

    if-ne p1, v0, :cond_2c

    .line 160
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->startScanCapture()V

    goto :goto_33

    .line 161
    :cond_2c
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->btnAssign:Landroid/widget/Button;

    if-ne p1, v0, :cond_33

    .line 162
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->submitAssign()V

    :cond_33
    :goto_33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0031

    .line 106
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->setContentView(I)V

    const p1, 0x7f080113

    .line 108
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etServerIp:Landroid/widget/EditText;

    const p1, 0x7f080114

    .line 109
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->btnSaveIp:Landroid/widget/Button;

    const p1, 0x7f080115

    .line 110
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etTagId:Landroid/widget/EditText;

    const p1, 0x7f080122

    .line 111
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etTid:Landroid/widget/EditText;

    const p1, 0x7f080123

    .line 112
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etScanPower:Landroid/widget/EditText;

    const p1, 0x7f080116

    .line 113
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->btnScan:Landroid/widget/Button;

    const p1, 0x7f080117

    .line 114
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etBaleNumber:Landroid/widget/EditText;

    const p1, 0x7f080118

    .line 115
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->spGrade:Landroid/widget/Spinner;

    const p1, 0x7f080119

    .line 116
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etTruck:Landroid/widget/EditText;

    const p1, 0x7f08011a

    .line 117
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etFarm:Landroid/widget/EditText;

    const p1, 0x7f08011b

    .line 118
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etFarmer:Landroid/widget/EditText;

    const p1, 0x7f08011c

    .line 119
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etWeight:Landroid/widget/EditText;

    const p1, 0x7f08011d

    .line 120
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->btnAssign:Landroid/widget/Button;

    const p1, 0x7f08011e

    .line 121
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/AssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->lvAssignedTags:Landroid/widget/ListView;

    const-string p1, "B"

    const-string v0, "C"

    const-string v1, "A"

    .line 123
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->spGrade:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etServerIp:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->loadServerIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->etScanPower:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->loadScanPower()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance p1, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;-><init>(Lcom/UHF/scanlable/AssignActivity;Lcom/UHF/scanlable/AssignActivity$1;)V

    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->tagListAdapter:Lcom/UHF/scanlable/AssignActivity$TagListAdapter;

    .line 132
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->lvAssignedTags:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->btnSaveIp:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->btnScan:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity;->btnAssign:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x20b

    if-ne p1, v0, :cond_f

    .line 168
    iget-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->keyPress:Z

    if-nez v0, :cond_f

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/UHF/scanlable/AssignActivity;->keyPress:Z

    .line 170
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->startScanCapture()V

    return p1

    .line 173
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x20b

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->keyPress:Z

    .line 181
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->refreshLoopRunning:Z

    .line 150
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    invoke-direct {p0}, Lcom/UHF/scanlable/AssignActivity;->stopScanPoll()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/UHF/scanlable/AssignActivity;->refreshLoopRunning:Z

    .line 143
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
