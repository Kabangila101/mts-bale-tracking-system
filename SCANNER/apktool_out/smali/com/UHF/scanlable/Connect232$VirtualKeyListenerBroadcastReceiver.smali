.class Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Connect232.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/Connect232;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualKeyListenerBroadcastReceiver"
.end annotation


# instance fields
.field private final SYSTEM_HOME_KEY:Ljava/lang/String;

.field private final SYSTEM_REASON:Ljava/lang/String;

.field private final SYSTEM_RECENT_APPS:Ljava/lang/String;

.field final synthetic this$0:Lcom/UHF/scanlable/Connect232;


# direct methods
.method private constructor <init>(Lcom/UHF/scanlable/Connect232;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    .line 209
    iput-object p1, p0, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;->SYSTEM_REASON:Ljava/lang/String;

    const-string p1, "homekey"

    .line 210
    iput-object p1, p0, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;->SYSTEM_HOME_KEY:Ljava/lang/String;

    const-string p1, "recentapps"

    .line 211
    iput-object p1, p0, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;->SYSTEM_RECENT_APPS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/UHF/scanlable/Connect232;Lcom/UHF/scanlable/Connect232$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/Connect232$VirtualKeyListenerBroadcastReceiver;-><init>(Lcom/UHF/scanlable/Connect232;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    .line 217
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 219
    sput-boolean p2, Lcom/UHF/scanlable/Connect232;->mSwitchFlag:Z

    const-string v0, "homekey"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Press HOME key"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 222
    invoke-static {p1}, Lcom/UHF/scanlable/OtgUtils;->set53GPIOEnabled(Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "recentapps"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Press RECENT_APPS key"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    invoke-static {p2}, Lcom/UHF/scanlable/OtgUtils;->set53GPIOEnabled(Z)Z

    :cond_1
    :goto_0
    return-void
.end method
