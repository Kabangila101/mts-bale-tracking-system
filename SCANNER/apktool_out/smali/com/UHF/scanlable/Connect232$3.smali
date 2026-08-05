.class Lcom/UHF/scanlable/Connect232$3;
.super Ljava/lang/Object;
.source "Connect232.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/Connect232;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/Connect232;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/Connect232;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x0

    const v0, 0x7f0d00ab

    .line 88
    :try_start_0
    sget-object v1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-static {}, Lcom/UHF/scanlable/Connect232;->access$100()Ljava/lang/String;

    move-result-object v2

    const v3, 0xe100

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/rfid/trans/ReaderHelp;->Connect(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 90
    sput v3, Lcom/UHF/scanlable/Connect232;->baud:I

    .line 91
    iget-object v1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-static {v1}, Lcom/UHF/scanlable/Connect232;->access$200(Lcom/UHF/scanlable/Connect232;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    iget-object v1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-static {v1}, Lcom/UHF/scanlable/Connect232;->access$300(Lcom/UHF/scanlable/Connect232;)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    const-class v3, Lcom/UHF/scanlable/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-virtual {v2, v1}, Lcom/UHF/scanlable/Connect232;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-static {}, Lcom/UHF/scanlable/Connect232;->access$100()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1c200

    invoke-virtual {v1, v2, v3, v4}, Lcom/rfid/trans/ReaderHelp;->Connect(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    sput v3, Lcom/UHF/scanlable/Connect232;->baud:I

    .line 102
    iget-object v1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-static {v1}, Lcom/UHF/scanlable/Connect232;->access$400(Lcom/UHF/scanlable/Connect232;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-static {v1}, Lcom/UHF/scanlable/Connect232;->access$300(Lcom/UHF/scanlable/Connect232;)V

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    const-class v3, Lcom/UHF/scanlable/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-virtual {v2, v1}, Lcom/UHF/scanlable/Connect232;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    .line 111
    invoke-virtual {v1}, Lcom/UHF/scanlable/Connect232;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    .line 112
    invoke-virtual {v2, v0}, Lcom/UHF/scanlable/Connect232;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    iget-object v1, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    .line 119
    invoke-virtual {v1}, Lcom/UHF/scanlable/Connect232;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/UHF/scanlable/Connect232$3;->this$0:Lcom/UHF/scanlable/Connect232;

    .line 120
    invoke-virtual {v2, v0}, Lcom/UHF/scanlable/Connect232;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
