.class public Lcom/UHF/scanlable/MainActivity;
.super Landroid/app/TabActivity;
.source "MainActivity.java"


# static fields
.field public static myTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 19
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MainActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0020

    .line 21
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MainActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/UHF/scanlable/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object p1

    sput-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    .line 23
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/UHF/scanlable/ReadWriteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/UHF/scanlable/ScanView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/UHF/scanlable/MaskActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/UHF/scanlable/Finding;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/UHF/scanlable/AssignActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const v6, 0x7f0d00e1

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    .line 30
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const v6, 0x7f0d00e0

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 31
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const v6, 0x7f0d00df

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 32
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const v6, 0x7f0d00de

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 33
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const v6, 0x7f0d007a

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 34
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const v6, 0x7f0d00ff

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 35
    sget-object v5, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 36
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 37
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 38
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 39
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 40
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 41
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 57
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->DisConnect()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 51
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 46
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    return-void
.end method
