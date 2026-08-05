.class Lcom/UHF/scanlable/AssignActivity$1;
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

    .line 86
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$1;->this$0:Lcom/UHF/scanlable/AssignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$1;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->pollForScannedTag()V
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$000(Lcom/UHF/scanlable/AssignActivity;)V

    return-void
.end method
