.class Lcom/UHF/scanlable/ScanMode$3;
.super Ljava/util/TimerTask;
.source "ScanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/ScanMode;->readTag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/ScanMode;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/ScanMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$3;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/UHF/scanlable/ScanMode$3;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-wide v2, v2, Lcom/UHF/scanlable/ScanMode;->beginTime:J

    sub-long/2addr v0, v2

    .line 500
    iget-object v2, p0, Lcom/UHF/scanlable/ScanMode$3;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v2, v2, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    .line 501
    iput v3, v2, Landroid/os/Message;->what:I

    .line 502
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object v3, p0, Lcom/UHF/scanlable/ScanMode$3;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v3, v3, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    sget v2, Lcom/UHF/scanlable/ScanMode;->runtime:I

    if-eqz v2, :cond_0

    .line 506
    sget v2, Lcom/UHF/scanlable/ScanMode;->runtime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 508
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode$3;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v0}, Lcom/UHF/scanlable/ScanMode;->access$500(Lcom/UHF/scanlable/ScanMode;)V

    :cond_0
    return-void
.end method
