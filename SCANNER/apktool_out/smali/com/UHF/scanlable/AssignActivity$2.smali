.class Lcom/UHF/scanlable/AssignActivity$2;
.super Ljava/lang/Object;
.source "AssignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/AssignActivity;
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

    .line 93
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$2;->this$0:Lcom/UHF/scanlable/AssignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$2;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->fetchTags()V
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$100(Lcom/UHF/scanlable/AssignActivity;)V

    .line 97
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$2;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->refreshLoopRunning:Z
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$200(Lcom/UHF/scanlable/AssignActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 98
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$2;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$300(Lcom/UHF/scanlable/AssignActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method
