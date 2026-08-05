.class Lcom/UHF/scanlable/AssignActivity$5;
.super Ljava/lang/Object;
.source "AssignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/AssignActivity;->deleteTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/AssignActivity;

.field final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/AssignActivity;Ljava/lang/String;)V
    .registers 3

    .line 454
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$5;->this$0:Lcom/UHF/scanlable/AssignActivity;

    iput-object p2, p0, Lcom/UHF/scanlable/AssignActivity$5;->val$tagId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "tag_id"

    .line 459
    iget-object v2, p0, Lcom/UHF/scanlable/AssignActivity$5;->val$tagId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_c

    .line 462
    :catch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/UHF/scanlable/AssignActivity$5;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # invokes: Lcom/UHF/scanlable/AssignActivity;->baseUrl()Ljava/lang/String;
    invoke-static {v2}, Lcom/UHF/scanlable/AssignActivity;->access$500(Lcom/UHF/scanlable/AssignActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/delete_tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/UHF/scanlable/AssignActivity;->postJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/UHF/scanlable/AssignActivity;->access$600(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/UHF/scanlable/AssignActivity$5;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/UHF/scanlable/AssignActivity;->access$300(Lcom/UHF/scanlable/AssignActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/UHF/scanlable/AssignActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/UHF/scanlable/AssignActivity$5$1;-><init>(Lcom/UHF/scanlable/AssignActivity$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
