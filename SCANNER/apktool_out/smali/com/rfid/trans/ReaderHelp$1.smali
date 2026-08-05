.class Lcom/rfid/trans/ReaderHelp$1;
.super Ljava/lang/Object;
.source "ReaderHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rfid/trans/ReaderHelp;->Connect(Ljava/lang/String;II)I
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

    .line 121
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp$1;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$1;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$000(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-boolean v0, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$1;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-static {v0}, Lcom/rfid/trans/ReaderHelp;->access$100(Lcom/rfid/trans/ReaderHelp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$1;->this$0:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    const-wide/16 v0, 0x32

    .line 129
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp$1;->this$0:Lcom/rfid/trans/ReaderHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rfid/trans/ReaderHelp;->access$202(Lcom/rfid/trans/ReaderHelp;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
