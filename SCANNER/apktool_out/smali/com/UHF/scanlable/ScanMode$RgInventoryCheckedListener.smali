.class public Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;
.super Ljava/lang/Object;
.source "ScanMode.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/ScanMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RgInventoryCheckedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/ScanMode;


# direct methods
.method public constructor <init>(Lcom/UHF/scanlable/ScanMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "checkedId"
        }
    .end annotation

    .line 241
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode;->RbInventorySingle:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;->this$0:Lcom/UHF/scanlable/ScanMode;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/UHF/scanlable/ScanMode;->access$402(Lcom/UHF/scanlable/ScanMode;I)I

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;->this$0:Lcom/UHF/scanlable/ScanMode;

    iget-object p1, p1, Lcom/UHF/scanlable/ScanMode;->RbInventoryLoop:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;->this$0:Lcom/UHF/scanlable/ScanMode;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/UHF/scanlable/ScanMode;->access$402(Lcom/UHF/scanlable/ScanMode;I)I

    :cond_1
    :goto_0
    return-void
.end method
