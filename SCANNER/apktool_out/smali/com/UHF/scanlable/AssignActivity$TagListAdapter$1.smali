.class Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;
.super Ljava/lang/Object;
.source "AssignActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/UHF/scanlable/AssignActivity$TagListAdapter;

.field final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/AssignActivity$TagListAdapter;Ljava/lang/String;)V
    .registers 3

    .line 571
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;->this$1:Lcom/UHF/scanlable/AssignActivity$TagListAdapter;

    iput-object p2, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;->val$tagId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 574
    iget-object p1, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;->this$1:Lcom/UHF/scanlable/AssignActivity$TagListAdapter;

    iget-object p1, p1, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->this$0:Lcom/UHF/scanlable/AssignActivity;

    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;->val$tagId:Ljava/lang/String;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->deleteTag(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/UHF/scanlable/AssignActivity;->access$1200(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V

    return-void
.end method
