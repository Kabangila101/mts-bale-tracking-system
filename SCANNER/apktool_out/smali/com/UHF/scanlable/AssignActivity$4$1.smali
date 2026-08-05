.class Lcom/UHF/scanlable/AssignActivity$4$1;
.super Ljava/lang/Object;
.source "AssignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/AssignActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/UHF/scanlable/AssignActivity$4;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/AssignActivity$4;Ljava/lang/String;)V
    .registers 3

    .line 427
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$4$1;->this$1:Lcom/UHF/scanlable/AssignActivity$4;

    iput-object p2, p0, Lcom/UHF/scanlable/AssignActivity$4$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$4$1;->this$1:Lcom/UHF/scanlable/AssignActivity$4;

    iget-object v0, v0, Lcom/UHF/scanlable/AssignActivity$4;->this$0:Lcom/UHF/scanlable/AssignActivity;

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity$4$1;->val$result:Ljava/lang/String;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->applyTagsResult(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/UHF/scanlable/AssignActivity;->access$1000(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V

    return-void
.end method
