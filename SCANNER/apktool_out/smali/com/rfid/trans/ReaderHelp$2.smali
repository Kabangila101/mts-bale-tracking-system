.class Lcom/rfid/trans/ReaderHelp$2;
.super Ljava/lang/Object;
.source "ReaderHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rfid/trans/ReaderHelp;->StartRead()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rfid/trans/ReaderHelp;


# direct methods
.method constructor <init>(Lcom/rfid/trans/ReaderHelp;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 496
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rfid/trans/ReaderHelp;->access$302(Lcom/rfid/trans/ReaderHelp;B)B

    .line 497
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v2

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v2, v2

    invoke-static {v0, v2}, Lcom/rfid/trans/ReaderHelp;->access$402(Lcom/rfid/trans/ReaderHelp;B)B

    .line 498
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$100(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    .line 500
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$600(Lcom/rfid/trans/ReaderHelp;)V

    .line 501
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$700(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    const/16 v4, 0xa

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget v0, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v0, v2, :cond_a

    .line 503
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v0

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v5, 0xfd

    const/16 v6, -0x3b

    const/16 v7, 0x96

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$800(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 505
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$900(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1000(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    if-ge v0, v7, :cond_a

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget-boolean v0, v0, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    if-nez v0, :cond_2

    new-array v0, v3, [B

    aput-byte v6, v0, v1

    .line 511
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$1100(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/BaseReader;

    move-result-object v3

    iget-object v5, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v5}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v5

    iget-byte v5, v5, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v3, v5, v0}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v3

    if-nez v3, :cond_a

    .line 512
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    aget-byte v0, v0, v1

    invoke-static {v3, v0}, Lcom/rfid/trans/ReaderHelp;->access$802(Lcom/rfid/trans/ReaderHelp;I)I

    goto/16 :goto_2

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iput-boolean v1, v0, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    goto/16 :goto_2

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v0

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v5, 0xfc

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$800(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    const/16 v5, 0x33

    if-ne v0, v5, :cond_6

    .line 530
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$900(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    if-lt v0, v7, :cond_4

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1000(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    if-ge v0, v7, :cond_a

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget-boolean v0, v0, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    if-nez v0, :cond_5

    new-array v0, v3, [B

    aput-byte v6, v0, v1

    .line 536
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$1100(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/BaseReader;

    move-result-object v3

    iget-object v5, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v5}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v5

    iget-byte v5, v5, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v3, v5, v0}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v3

    if-nez v3, :cond_a

    .line 537
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    aget-byte v0, v0, v1

    invoke-static {v3, v0}, Lcom/rfid/trans/ReaderHelp;->access$802(Lcom/rfid/trans/ReaderHelp;I)I

    goto/16 :goto_2

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iput-boolean v1, v0, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    goto/16 :goto_2

    .line 553
    :cond_6
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1200(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$800(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_7

    new-array v0, v3, [B

    const/16 v3, -0x33

    aput-byte v3, v0, v1

    .line 557
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$1100(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/BaseReader;

    move-result-object v3

    iget-object v5, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v5}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v5

    iget-byte v5, v5, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v3, v5, v0}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v3

    if-nez v3, :cond_a

    .line 558
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    aget-byte v0, v0, v1

    invoke-static {v3, v0}, Lcom/rfid/trans/ReaderHelp;->access$802(Lcom/rfid/trans/ReaderHelp;I)I

    goto :goto_2

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v0

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v5, 0xfb

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$800(Lcom/rfid/trans/ReaderHelp;)I

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_a

    new-array v0, v3, [B

    .line 570
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$900(Lcom/rfid/trans/ReaderHelp;)I

    move-result v3

    const/16 v5, 0x32

    if-lt v3, v5, :cond_8

    const/16 v3, -0xd

    aput-byte v3, v0, v1

    goto :goto_1

    .line 572
    :cond_8
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$900(Lcom/rfid/trans/ReaderHelp;)I

    move-result v3

    if-le v3, v4, :cond_9

    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$900(Lcom/rfid/trans/ReaderHelp;)I

    move-result v3

    if-ge v3, v5, :cond_9

    aput-byte v6, v0, v1

    .line 574
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$1100(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/BaseReader;

    move-result-object v3

    iget-object v5, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v5}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v5

    iget-byte v5, v5, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v3, v5, v0}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v3

    if-nez v3, :cond_a

    .line 575
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    aget-byte v0, v0, v1

    invoke-static {v3, v0}, Lcom/rfid/trans/ReaderHelp;->access$802(Lcom/rfid/trans/ReaderHelp;I)I

    .line 585
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget v0, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-eq v0, v2, :cond_0

    .line 587
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v0

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Interval:I

    mul-int/lit8 v0, v0, 0xa

    int-to-long v2, v0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 591
    :cond_b
    sput-boolean v1, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 592
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    if-le v0, v3, :cond_c

    .line 594
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0, v2}, Lcom/rfid/trans/ReaderHelp;->access$1300(Lcom/rfid/trans/ReaderHelp;B)V

    const-wide/16 v4, 0x5

    .line 595
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 596
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/rfid/trans/ReaderHelp;->access$1300(Lcom/rfid/trans/ReaderHelp;B)V

    goto :goto_3

    .line 598
    :cond_c
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$700(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 600
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0, v3}, Lcom/rfid/trans/ReaderHelp;->access$1300(Lcom/rfid/trans/ReaderHelp;B)V

    .line 602
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    iget v0, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$700(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-array v0, v3, [B

    .line 605
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v2}, Lcom/rfid/trans/ReaderHelp;->access$1400(Lcom/rfid/trans/ReaderHelp;)I

    move-result v2

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 606
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v2}, Lcom/rfid/trans/ReaderHelp;->access$1100(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/BaseReader;

    move-result-object v2

    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v3}, Lcom/rfid/trans/ReaderHelp;->access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;

    move-result-object v3

    iget-byte v3, v3, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v2, v3, v0}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v2

    if-nez v2, :cond_e

    .line 607
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    aget-byte v0, v0, v1

    invoke-static {v2, v0}, Lcom/rfid/trans/ReaderHelp;->access$802(Lcom/rfid/trans/ReaderHelp;I)I

    .line 617
    :cond_e
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rfid/trans/ReaderHelp;->access$1502(Lcom/rfid/trans/ReaderHelp;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 618
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1600(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/TagCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 619
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$2;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1600(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/TagCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/rfid/trans/TagCallback;->StopReadCallBack()V

    :cond_f
    return-void
.end method
