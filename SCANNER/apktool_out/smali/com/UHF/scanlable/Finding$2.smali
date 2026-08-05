.class Lcom/UHF/scanlable/Finding$2;
.super Ljava/lang/Object;
.source "Finding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/Finding;->readTag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/Finding;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/Finding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    invoke-static {v0}, Lcom/UHF/scanlable/Finding;->access$100(Lcom/UHF/scanlable/Finding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    sget-object v1, Lcom/UHF/scanlable/ScanMode;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rfid/trans/ReaderHelp;->FindEPC(Ljava/lang/String;)Lcom/rfid/trans/ReadTag;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v3, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget v0, v0, Lcom/rfid/trans/ReadTag;->rssi:I

    iput v0, v3, Lcom/UHF/scanlable/Finding;->rssi:I

    .line 120
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    .line 121
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget-object v0, v0, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 122
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget-object v0, v0, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 123
    iput v2, v0, Landroid/os/Message;->what:I

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget v3, v3, Lcom/UHF/scanlable/Finding;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget-object v1, v1, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget v0, v0, Lcom/UHF/scanlable/Finding;->rssi:I

    if-lez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget v3, v0, Lcom/UHF/scanlable/Finding;->rssi:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/UHF/scanlable/Finding;->rssi:I

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget v0, v0, Lcom/UHF/scanlable/Finding;->rssi:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iput v2, v0, Lcom/UHF/scanlable/Finding;->rssi:I

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget-object v0, v0, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 133
    iget-object v0, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget-object v0, v0, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 134
    iput v2, v0, Landroid/os/Message;->what:I

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget v3, v3, Lcom/UHF/scanlable/Finding;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/UHF/scanlable/Finding$2;->this$0:Lcom/UHF/scanlable/Finding;

    iget-object v1, v1, Lcom/UHF/scanlable/Finding;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method
