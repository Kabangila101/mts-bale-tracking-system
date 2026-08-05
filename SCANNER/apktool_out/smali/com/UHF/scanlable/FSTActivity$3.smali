.class Lcom/UHF/scanlable/FSTActivity$3;
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

.field final synthetic val$finalEPC:[B


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/FSTActivity;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalEPC"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    iput-object p2, p0, Lcom/UHF/scanlable/FSTActivity$3;->val$finalEPC:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const-string v1, "\u7b49\u5f85\u547d\u4ee4\u6267\u884c"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/UHF/scanlable/FSTActivity;->access$100(Lcom/UHF/scanlable/FSTActivity;Ljava/lang/String;I)V

    .line 177
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->val$finalEPC:[B

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 178
    array-length v0, v0

    div-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    sget-object v3, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    iget-object v4, p0, Lcom/UHF/scanlable/FSTActivity$3;->val$finalEPC:[B

    invoke-virtual {v3, v0, v4}, Lcom/rfid/trans/ReaderHelp;->FST_ShowImage(B[B)I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const-string v3, "\u547d\u4ee4\u6267\u884c\u6210\u529f"

    invoke-static {v0, v3, v2}, Lcom/UHF/scanlable/FSTActivity;->access$100(Lcom/UHF/scanlable/FSTActivity;Ljava/lang/String;I)V

    goto :goto_1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const-string v3, "\u547d\u4ee4\u6267\u884c\u5931\u8d25"

    invoke-static {v0, v3, v2}, Lcom/UHF/scanlable/FSTActivity;->access$100(Lcom/UHF/scanlable/FSTActivity;Ljava/lang/String;I)V

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    iget-object v0, v0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    iget-object v0, v0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity$3;->this$0:Lcom/UHF/scanlable/FSTActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    return-void
.end method
