.class public Lcom/rfid/trans/MaskClass;
.super Ljava/lang/Object;
.source "MaskClass.java"


# instance fields
.field public MaskAdr:[B

.field public MaskData:[B

.field public MaskLen:B

.field public MaskMem:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    const/16 v0, 0x60

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/rfid/trans/MaskClass;->MaskData:[B

    return-void
.end method
