.class Lcom/UHF/scanlable/AssignActivity$5$1;
.super Ljava/lang/Object;
.source "AssignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/AssignActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/UHF/scanlable/AssignActivity$5;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/AssignActivity$5;Ljava/lang/String;)V
    .registers 3

    .line 463
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$5$1;->this$1:Lcom/UHF/scanlable/AssignActivity$5;

    iput-object p2, p0, Lcom/UHF/scanlable/AssignActivity$5$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$5$1;->val$result:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 467
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$5$1;->this$1:Lcom/UHF/scanlable/AssignActivity$5;

    iget-object v0, v0, Lcom/UHF/scanlable/AssignActivity$5;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->fetchTags()V
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$100(Lcom/UHF/scanlable/AssignActivity;)V

    goto :goto_1e

    .line 469
    :cond_c
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$5$1;->this$1:Lcom/UHF/scanlable/AssignActivity$5;

    iget-object v0, v0, Lcom/UHF/scanlable/AssignActivity$5;->this$0:Lcom/UHF/scanlable/AssignActivity;

    invoke-virtual {v0}, Lcom/UHF/scanlable/AssignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Delete failed: no response from server"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1e
    return-void
.end method
