.class Lcom/UHF/scanlable/AssignActivity$TagListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/AssignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/AssignActivity;


# direct methods
.method private constructor <init>(Lcom/UHF/scanlable/AssignActivity;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->this$0:Lcom/UHF/scanlable/AssignActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/UHF/scanlable/AssignActivity;Lcom/UHF/scanlable/AssignActivity$1;)V
    .registers 3

    .line 539
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;-><init>(Lcom/UHF/scanlable/AssignActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$1100(Lcom/UHF/scanlable/AssignActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;
    invoke-static {v0}, Lcom/UHF/scanlable/AssignActivity;->access$1100(Lcom/UHF/scanlable/AssignActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-nez p2, :cond_10

    .line 559
    iget-object p2, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->this$0:Lcom/UHF/scanlable/AssignActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 561
    :cond_10
    iget-object p3, p0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter;->this$0:Lcom/UHF/scanlable/AssignActivity;

    # getter for: Lcom/UHF/scanlable/AssignActivity;->assignedTags:Ljava/util/List;
    invoke-static {p3}, Lcom/UHF/scanlable/AssignActivity;->access$1100(Lcom/UHF/scanlable/AssignActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p3, "tag_id"

    const-string v0, ""

    .line 562
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f08011f

    .line 564
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tid"

    .line 565
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bale_number"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "grade"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\nEPC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 567
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_64

    move-object v2, v0

    goto :goto_73

    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nTID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "farm"

    .line 568
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080120

    .line 570
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 571
    new-instance v0, Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/UHF/scanlable/AssignActivity$TagListAdapter$1;-><init>(Lcom/UHF/scanlable/AssignActivity$TagListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
