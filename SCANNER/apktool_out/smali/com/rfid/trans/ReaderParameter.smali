.class public Lcom/rfid/trans/ReaderParameter;
.super Ljava/lang/Object;
.source "ReaderParameter.java"


# instance fields
.field public Antenna:I

.field public ComAddr:B

.field public Interval:I

.field public IvtType:I

.field public Length:I

.field public MaskAdr:[B

.field public MaskData:[B

.field public MaskLen:B

.field public MaskMem:B

.field public Memory:I

.field public Password:Ljava/lang/String;

.field public QValue:I

.field public ScanTime:I

.field public Session:I

.field public WordPtr:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/rfid/trans/ReaderParameter;->Memory:I

    const-string v2, "00000000"

    .line 7
    iput-object v2, p0, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    const/4 v3, 0x6

    .line 9
    iput v3, p0, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 10
    iput v2, p0, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/4 v3, 0x4

    .line 11
    iput v3, p0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    const/16 v3, 0x14

    .line 12
    iput v3, p0, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    const/16 v3, 0x80

    .line 13
    iput v3, p0, Lcom/rfid/trans/ReaderParameter;->Antenna:I

    .line 14
    iput v2, p0, Lcom/rfid/trans/ReaderParameter;->Interval:I

    .line 15
    iput-byte v0, p0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    new-array v0, v1, [B

    .line 16
    iput-object v0, p0, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    .line 17
    iput-byte v2, p0, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    const/16 v0, 0x60

    new-array v0, v0, [B

    .line 18
    iput-object v0, p0, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    return-void
.end method
