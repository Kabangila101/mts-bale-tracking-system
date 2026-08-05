.class public Lcom/UHF/scanlable/Connect232;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Connect232.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COONECTRS232"

.field private static am:Landroid/media/AudioManager; = null

.field public static baud:I = 0x1c200

.field private static devport:Ljava/lang/String; = "/dev/ttyHSL0"

.field public static mSwitchFlag:Z

.field static soundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static soundPool:Landroid/media/SoundPool;

.field private static volumnRatio:F


# instance fields
.field private mBaud115200View:Landroid/widget/RadioButton;

.field private mBaud57600View:Landroid/widget/RadioButton;

.field private mConectButton:Landroid/widget/TextView;

.field private mPosPort:I

.field private mVirtualKeyListenerBroadcastReceiver:Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 149
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/UHF/scanlable/Connect232;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/UHF/scanlable/Connect232;->soundMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 207
    sput-boolean v0, Lcom/UHF/scanlable/Connect232;->mSwitchFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/UHF/scanlable/Connect232;->mPosPort:I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/UHF/scanlable/Connect232;->devport:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/UHF/scanlable/Connect232;)Landroid/widget/RadioButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/UHF/scanlable/Connect232;->mBaud57600View:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/UHF/scanlable/Connect232;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/UHF/scanlable/Connect232;->initRfid()V

    return-void
.end method

.method static synthetic access$400(Lcom/UHF/scanlable/Connect232;)Landroid/widget/RadioButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/UHF/scanlable/Connect232;->mBaud115200View:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private initRfid()V
    .locals 4

    .line 128
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->GetReaderType()I

    move-result v0

    .line 129
    sget-object v1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v1}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-eq v0, v3, :cond_5

    const/16 v3, 0x28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x23

    if-eq v0, v3, :cond_5

    const/16 v3, 0x37

    if-eq v0, v3, :cond_5

    const/16 v3, 0x36

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0x70

    if-eq v0, v3, :cond_4

    const/16 v3, 0x71

    if-eq v0, v3, :cond_4

    const/16 v3, 0x31

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    if-eq v0, v3, :cond_3

    const/16 v3, 0x63

    if-eq v0, v3, :cond_3

    const/16 v3, 0x65

    if-eq v0, v3, :cond_3

    const/16 v3, 0x66

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 144
    iput v0, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    goto :goto_3

    .line 140
    :cond_3
    :goto_0
    iput v2, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    goto :goto_3

    :cond_4
    :goto_1
    const/16 v0, 0xfe

    .line 136
    iput v0, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    goto :goto_3

    .line 132
    :cond_5
    :goto_2
    iput v2, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 146
    :goto_3
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, v1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    return-void
.end method

.method private initSound()V
    .locals 5

    .line 173
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/UHF/scanlable/Connect232;->soundPool:Landroid/media/SoundPool;

    .line 174
    sget-object v0, Lcom/UHF/scanlable/Connect232;->soundMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/UHF/scanlable/Connect232;->soundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v3, p0, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audio"

    .line 175
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/Connect232;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/UHF/scanlable/Connect232;->am:Landroid/media/AudioManager;

    .line 176
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    sget-object v1, Lcom/UHF/scanlable/Connect232;->soundMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/UHF/scanlable/Connect232;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1, v2}, Lcom/rfid/trans/ReaderHelp;->SetSoundID(ILandroid/media/SoundPool;)V

    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 157
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/UHF/scanlable/Connect232;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/UHF/scanlable/Connect232;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0a001c

    .line 58
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Connect232;->setContentView(I)V

    .line 59
    new-instance p1, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;-><init>(Lcom/UHF/scanlable/Connect232;Lcom/UHF/scanlable/Connect232$1;)V

    iput-object p1, p0, Lcom/UHF/scanlable/Connect232;->mVirtualKeyListenerBroadcastReceiver:Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;

    .line 60
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/UHF/scanlable/Connect232;->mVirtualKeyListenerBroadcastReceiver:Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/UHF/scanlable/Connect232;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    invoke-direct {p0}, Lcom/UHF/scanlable/Connect232;->initSound()V

    .line 63
    invoke-static {p0}, Lcom/UHF/scanlable/Connect232;->verifyStoragePermissions(Landroid/app/Activity;)V

    const p1, 0x7f0800f8

    .line 64
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Connect232;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/Connect232;->mConectButton:Landroid/widget/TextView;

    const p1, 0x7f08002f

    .line 67
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Connect232;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/UHF/scanlable/Connect232;->mBaud57600View:Landroid/widget/RadioButton;

    const p1, 0x7f08002e

    .line 68
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Connect232;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/UHF/scanlable/Connect232;->mBaud115200View:Landroid/widget/RadioButton;

    const p1, 0x1c200

    .line 70
    sput p1, Lcom/UHF/scanlable/Connect232;->baud:I

    .line 71
    iget-object p1, p0, Lcom/UHF/scanlable/Connect232;->mBaud57600View:Landroid/widget/RadioButton;

    new-instance v0, Lcom/UHF/scanlable/Connect232$1;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/Connect232$1;-><init>(Lcom/UHF/scanlable/Connect232;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/UHF/scanlable/Connect232;->mBaud115200View:Landroid/widget/RadioButton;

    new-instance v0, Lcom/UHF/scanlable/Connect232$2;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/Connect232$2;-><init>(Lcom/UHF/scanlable/Connect232;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/UHF/scanlable/Connect232;->mConectButton:Landroid/widget/TextView;

    new-instance v0, Lcom/UHF/scanlable/Connect232$3;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/Connect232$3;-><init>(Lcom/UHF/scanlable/Connect232;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-static {v0}, Lcom/UHF/scanlable/OtgUtils;->set53GPIOEnabled(Z)Z

    .line 201
    iget-object v0, p0, Lcom/UHF/scanlable/Connect232;->mVirtualKeyListenerBroadcastReceiver:Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/Connect232;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/UHF/scanlable/Connect232;->finish()V

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    invoke-static {v0}, Lcom/UHF/scanlable/OtgUtils;->set53GPIOEnabled(Z)Z

    .line 184
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method
