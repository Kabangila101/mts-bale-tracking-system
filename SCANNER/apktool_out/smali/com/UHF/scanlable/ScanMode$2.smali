.class Lcom/UHF/scanlable/ScanMode$2;
.super Ljava/lang/Object;
.source "ScanMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/ScanMode;->onClick(Landroid/view/View;)V
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

    .line 400
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$2;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which",
            "isChecked"
        }
    .end annotation

    .line 404
    new-instance p1, Lcom/UHF/scanlable/ScanMode$FilterLed;

    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode$2;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p1, v0}, Lcom/UHF/scanlable/ScanMode$FilterLed;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    .line 405
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode$2;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object v0, v0, Lcom/UHF/scanlable/ScanMode;->items:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p1, Lcom/UHF/scanlable/ScanMode$FilterLed;->epc:Ljava/lang/String;

    .line 406
    iput-boolean p3, p1, Lcom/UHF/scanlable/ScanMode$FilterLed;->isChedk:Z

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    .line 409
    sget-object v1, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    iget-object v2, p1, Lcom/UHF/scanlable/ScanMode$FilterLed;->epc:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 411
    sget-object v0, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode$FilterLed;->epc:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_0
    sget-object v1, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    iget-object v2, p1, Lcom/UHF/scanlable/ScanMode$FilterLed;->epc:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 417
    sget-object v0, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode$FilterLed;->epc:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 419
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$2;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode;->chk:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
