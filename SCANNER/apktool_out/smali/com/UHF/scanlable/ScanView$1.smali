.class Lcom/UHF/scanlable/ScanView$1;
.super Ljava/lang/Object;
.source "ScanView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/ScanView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/ScanView;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/ScanView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 305
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setVisibility(I)V

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 306
    iget-object p4, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    invoke-static {p4, p1}, Lcom/UHF/scanlable/ScanView;->access$000(Lcom/UHF/scanlable/ScanView;I)V

    :cond_0
    const/4 p4, 0x2

    if-ne p3, p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    invoke-static {p1, p4}, Lcom/UHF/scanlable/ScanView;->access$000(Lcom/UHF/scanlable/ScanView;I)V

    :cond_1
    const/4 p1, 0x3

    if-ne p3, p4, :cond_2

    .line 308
    iget-object p4, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    invoke-static {p4, p1}, Lcom/UHF/scanlable/ScanView;->access$000(Lcom/UHF/scanlable/ScanView;I)V

    :cond_2
    const/4 p4, 0x4

    if-ne p3, p1, :cond_3

    .line 309
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    invoke-static {p1, p4}, Lcom/UHF/scanlable/ScanView;->access$000(Lcom/UHF/scanlable/ScanView;I)V

    :cond_3
    if-ne p3, p4, :cond_4

    .line 310
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    const/16 p4, 0x8

    invoke-static {p1, p4}, Lcom/UHF/scanlable/ScanView;->access$000(Lcom/UHF/scanlable/ScanView;I)V

    :cond_4
    const/4 p1, 0x5

    if-ne p3, p1, :cond_5

    .line 311
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView$1;->this$0:Lcom/UHF/scanlable/ScanView;

    invoke-static {p1, p2}, Lcom/UHF/scanlable/ScanView;->access$000(Lcom/UHF/scanlable/ScanView;I)V

    :cond_5
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
