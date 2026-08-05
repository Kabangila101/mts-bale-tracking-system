.class public Lcom/UHF/scanlable/ScanMode$FilterLed;
.super Ljava/lang/Object;
.source "ScanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UHF/scanlable/ScanMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterLed"
.end annotation


# instance fields
.field epc:Ljava/lang/String;

.field isChedk:Z

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

    .line 104
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode$FilterLed;->this$0:Lcom/UHF/scanlable/ScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
