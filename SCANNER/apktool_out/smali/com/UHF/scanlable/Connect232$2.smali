.class Lcom/UHF/scanlable/Connect232$2;
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

    .line 77
    iput-object p1, p0, Lcom/UHF/scanlable/Connect232$2;->this$0:Lcom/UHF/scanlable/Connect232;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const p1, 0x1c200

    .line 80
    sput p1, Lcom/UHF/scanlable/Connect232;->baud:I

    return-void
.end method
