.class Lcom/UHF/scanlable/AssignActivity$4;
.super Ljava/lang/Object;
.source "AssignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/AssignActivity;->fetchTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/AssignActivity;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/AssignActivity;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$4;->this$0:Lcom/UHF/scanlable/AssignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity$4;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->baseUrl()Ljava/lang/String;
    invoke-static {v1}, Lcom/UHF/scanlable/AssignActivity;->access$500(Lcom/UHF/scanlable/AssignActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/tags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/UHF/scanlable/AssignActivity;->getJson(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity$4;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/UHF/scanlable/AssignActivity;->access$300(Lcom/UHF/scanlable/AssignActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/UHF/scanlable/AssignActivity$4$1;

    invoke-direct {v2, p0, v0}, Lcom/UHF/scanlable/AssignActivity$4$1;-><init>(Lcom/UHF/scanlable/AssignActivity$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
