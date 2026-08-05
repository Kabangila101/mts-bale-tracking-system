.class public Lcom/UHF/scanlable/Finding;
.super Landroid/app/Activity;
.source "Finding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btFinding:Landroid/widget/Button;

.field epcid:Landroid/widget/TextView;

.field handler:Landroid/os/Handler;

.field public keyPress:Z

.field private mCircleProgress:Lcom/UHF/scanlable/CircleProgress;

.field private volatile mThread:Ljava/lang/Thread;

.field private volatile mWorking:Z

.field rssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/UHF/scanlable/Finding;->mWorking:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/UHF/scanlable/Finding;->rssi:I

    .line 26
    iput-boolean v0, p0, Lcom/UHF/scanlable/Finding;->keyPress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/UHF/scanlable/Finding;)Lcom/UHF/scanlable/CircleProgress;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/UHF/scanlable/Finding;->mCircleProgress:Lcom/UHF/scanlable/CircleProgress;

    return-object p0
.end method

.method static synthetic access$100(Lcom/UHF/scanlable/Finding;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/UHF/scanlable/Finding;->mWorking:Z

    return p0
.end method

.method private readTag()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->btFinding:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d007a

    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/Finding;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/UHF/scanlable/Finding;->mWorking:Z

    .line 110
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->btFinding:Landroid/widget/Button;

    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/UHF/scanlable/Finding$2;

    invoke-direct {v1, p0}, Lcom/UHF/scanlable/Finding$2;-><init>(Lcom/UHF/scanlable/Finding;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    .line 141
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/UHF/scanlable/Finding;->mWorking:Z

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/UHF/scanlable/Finding;->mThread:Ljava/lang/Thread;

    .line 155
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->btFinding:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method private setOpenScan523(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isopen"
        }
    .end annotation

    .line 62
    :try_start_0
    new-instance v0, Landroid/device/DeviceManager;

    invoke-direct {v0}, Landroid/device/DeviceManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "persist-persist.sys.scan.key"

    const-string v2, "0-"

    const-string v3, "persist-persist.sys.rfid.key"

    if-eqz p1, :cond_0

    .line 66
    :try_start_1
    invoke-virtual {v0, v3, v2}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "520-521-522-523-"

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "520-521-522-"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->btFinding:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/UHF/scanlable/Finding;->readTag()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001d

    .line 30
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Finding;->setContentView(I)V

    const p1, 0x7f080056

    .line 31
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Finding;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/UHF/scanlable/CircleProgress;

    iput-object p1, p0, Lcom/UHF/scanlable/Finding;->mCircleProgress:Lcom/UHF/scanlable/CircleProgress;

    const p1, 0x7f080066

    .line 32
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Finding;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/Finding;->epcid:Landroid/widget/TextView;

    const p1, 0x7f080040

    .line 33
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/Finding;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/Finding;->btFinding:Landroid/widget/Button;

    .line 34
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance p1, Lcom/UHF/scanlable/Finding$1;

    invoke-direct {p1, p0}, Lcom/UHF/scanlable/Finding$1;-><init>(Lcom/UHF/scanlable/Finding;)V

    iput-object p1, p0, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
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

    const/4 v0, 0x1

    const/16 v1, 0x20b

    if-ne p1, v1, :cond_0

    .line 164
    iget-boolean v1, p0, Lcom/UHF/scanlable/Finding;->keyPress:Z

    if-nez v1, :cond_0

    .line 166
    iput-boolean v0, p0, Lcom/UHF/scanlable/Finding;->keyPress:Z

    .line 167
    invoke-direct {p0}, Lcom/UHF/scanlable/Finding;->readTag()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/UHF/scanlable/Finding;->finish()V

    return v0

    .line 173
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
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

    const/16 v0, 0x20b

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/UHF/scanlable/Finding;->keyPress:Z

    .line 185
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, v0}, Lcom/UHF/scanlable/Finding;->setOpenScan523(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->epcid:Landroid/widget/TextView;

    sget-object v1, Lcom/UHF/scanlable/ScanMode;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/UHF/scanlable/Finding;->mCircleProgress:Lcom/UHF/scanlable/CircleProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/CircleProgress;->setValue(F)V

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/UHF/scanlable/Finding;->setOpenScan523(Z)V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
