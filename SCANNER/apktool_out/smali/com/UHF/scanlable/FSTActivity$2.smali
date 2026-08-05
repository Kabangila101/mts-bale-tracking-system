.class Lcom/UHF/scanlable/FSTActivity$2;
.super Ljava/lang/Object;
.source "FSTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/FSTActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/FSTActivity;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/FSTActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    invoke-static {v0}, Lcom/UHF/scanlable/FSTActivity;->access$000(Lcom/UHF/scanlable/FSTActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const-string v2, "\u6587\u4ef6\u4f20\u8f93\u6210\u529f"

    invoke-static {v0, v2, v1}, Lcom/UHF/scanlable/FSTActivity;->access$100(Lcom/UHF/scanlable/FSTActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const-string v2, "\u6587\u4ef6\u4f20\u8f93\u5931\u8d25"

    invoke-static {v0, v2, v1}, Lcom/UHF/scanlable/FSTActivity;->access$100(Lcom/UHF/scanlable/FSTActivity;Ljava/lang/String;I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    iget-object v0, v0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    iget-object v0, v0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$2;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    return-void
.end method
