.class public Lcom/UHF/scanlable/ScanMode$MsgCallback;
.super Ljava/lang/Object;
.source "ScanMode.java"

# interfaces
.implements Lcom/rfid/trans/TagCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/ScanMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/ScanMode;


# direct methods
.method public constructor <init>(Lcom/UHF/scanlable/ScanMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public StopReadCallBack()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v0, v0, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 574
    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    .line 575
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v1, v1, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public tagCallback(Lcom/rfid/trans/ReadTag;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 542
    iget-object v0, p1, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p1, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 544
    :goto_0
    invoke-static {v0}, Lcom/UHF/scanlable/ScanUploader;->postScan(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 545
    iget-object v2, p1, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 547
    :goto_1
    invoke-static {v0, v2}, Lcom/UHF/scanlable/TagCapture;->record(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/rfid/trans/ReadTag;->rssi:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 548
    iget-object v3, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v3, v3, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    .line 550
    iput v4, v3, Landroid/os/Message;->what:I

    .line 551
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ","

    if-nez v5, :cond_2

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 554
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    :goto_2
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget v0, p1, Lcom/UHF/scanlable/ScanMode;->lastCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/UHF/scanlable/ScanMode;->lastCount:I

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-wide v5, p1, Lcom/UHF/scanlable/ScanMode;->lastTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v2, v5

    if-ltz p1, :cond_3

    .line 560
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 561
    iput v0, p1, Landroid/os/Message;->what:I

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget v2, v2, Lcom/UHF/scanlable/ScanMode;->lastCount:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-wide v7, v7, Lcom/UHF/scanlable/ScanMode;->lastTime:J

    sub-long/2addr v5, v7

    div-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v0, v0, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/UHF/scanlable/ScanMode;->lastTime:J

    .line 565
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$MsgCallback;->this$0:Lcom/UHF/scanlable/ScanMode;

    iput v4, p1, Lcom/UHF/scanlable/ScanMode;->lastCount:I

    :cond_3
    return-void
.end method
