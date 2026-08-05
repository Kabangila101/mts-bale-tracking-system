.class Lcom/rfid/trans/ReaderHelp$3;
.super Ljava/lang/Object;
.source "ReaderHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rfid/trans/ReaderHelp;->StartInventoryLed(ILjava/util/List;)I
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

    .line 2193
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp$3;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2196
    :goto_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$3;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$100(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$3;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1700(Lcom/rfid/trans/ReaderHelp;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2200
    sput-boolean v0, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 2201
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$3;->this$0:Lcom/rfid/trans/ReaderHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rfid/trans/ReaderHelp;->access$1502(Lcom/rfid/trans/ReaderHelp;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2202
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$3;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1600(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/TagCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2203
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$3;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$1600(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/TagCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/rfid/trans/TagCallback;->StopReadCallBack()V

    :cond_1
    return-void
.end method
