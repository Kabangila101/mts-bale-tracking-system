.class Lcom/UHF/scanlable/ScanMode$1;
.super Landroid/os/Handler;
.source "ScanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/ScanMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/ScanMode;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/ScanMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ":"

    const-string v3, ","

    .line 171
    :try_start_0
    iget v4, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_7

    if-eq v4, v7, :cond_3

    if-eq v4, v8, :cond_2

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    goto/16 :goto_1

    .line 204
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v0}, Lcom/UHF/scanlable/ScanMode;->access$100(Lcom/UHF/scanlable/ScanMode;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v0}, Lcom/UHF/scanlable/ScanMode;->access$100(Lcom/UHF/scanlable/ScanMode;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 206
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/UHF/scanlable/ScanMode;->access$102(Lcom/UHF/scanlable/ScanMode;Ljava/util/Timer;)Ljava/util/Timer;

    .line 207
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v0, v0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    const v3, 0x7f0d0057

    invoke-virtual {v2, v3}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_1
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v0, v7}, Lcom/UHF/scanlable/ScanMode;->access$200(Lcom/UHF/scanlable/ScanMode;Z)V

    .line 210
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v0, v0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    sget-object v0, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 214
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v0}, Lcom/UHF/scanlable/ScanMode;->access$300(Lcom/UHF/scanlable/ScanMode;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/UHF/scanlable/ScanMode;->items:[Ljava/lang/String;

    .line 215
    iget-object v0, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v0}, Lcom/UHF/scanlable/ScanMode;->access$300(Lcom/UHF/scanlable/ScanMode;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, v0, Lcom/UHF/scanlable/ScanMode;->chk:[Z

    const/4 v0, 0x0

    .line 216
    :goto_0
    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v2}, Lcom/UHF/scanlable/ScanMode;->access$300(Lcom/UHF/scanlable/ScanMode;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 218
    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v2, v2, Lcom/UHF/scanlable/ScanMode;->items:[Ljava/lang/String;

    iget-object v3, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-static {v3}, Lcom/UHF/scanlable/ScanMode;->access$300(Lcom/UHF/scanlable/ScanMode;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "tagUii"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 219
    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v2, v2, Lcom/UHF/scanlable/ScanMode;->chk:[Z

    aput-boolean v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v2, v2, Lcom/UHF/scanlable/ScanMode;->tv_speed:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 186
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x36ee80

    .line 188
    div-long v5, v3, v5

    const-wide/16 v9, 0x3e8

    .line 189
    div-long v11, v3, v9

    const-wide/16 v13, 0x3c

    mul-long v15, v5, v13

    mul-long v15, v15, v13

    sub-long/2addr v11, v15

    div-long/2addr v11, v13

    .line 190
    div-long/2addr v3, v9

    sub-long/2addr v3, v15

    mul-long v13, v13, v11

    sub-long/2addr v3, v13

    .line 191
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "0"

    if-ge v5, v8, :cond_4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_4
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_6
    iget-object v4, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v4, v4, Lcom/UHF/scanlable/ScanMode;->tv_time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    array-length v2, v0

    if-ne v2, v8, :cond_8

    .line 177
    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    aget-object v3, v0, v6

    aget-object v0, v0, v7

    invoke-static {v2, v3, v0}, Lcom/UHF/scanlable/ScanMode;->access$000(Lcom/UHF/scanlable/ScanMode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_8
    iget-object v2, v1, Lcom/UHF/scanlable/ScanMode$1;->this$0:Lcom/UHF/scanlable/ScanMode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v8

    invoke-static {v2, v3, v0}, Lcom/UHF/scanlable/ScanMode;->access$000(Lcom/UHF/scanlable/ScanMode;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_9
    :goto_1
    return-void
.end method
