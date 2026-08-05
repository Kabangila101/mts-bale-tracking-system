.class Lcom/UHF/scanlable/ScanMode$4;
.super Ljava/lang/Object;
.source "ScanMode.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/ScanMode;
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

    .line 589
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$4;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "menu",
            "v",
            "menuInfo"
        }
    .end annotation

    .line 594
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode$4;->this$0:Lcom/UHF/scanlable/ScanMode;

    const p3, 0x7f0d00da

    invoke-virtual {p2, p3}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 595
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode$4;->this$0:Lcom/UHF/scanlable/ScanMode;

    const p3, 0x7f0d00d6

    invoke-virtual {p2, p3}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 596
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode$4;->this$0:Lcom/UHF/scanlable/ScanMode;

    const v1, 0x7f0d00cd

    invoke-virtual {p2, v1}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-interface {p1, p3, v1, v0, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
