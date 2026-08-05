.class Ljxl/write/biff/ProtectRecord;
.super Ljxl/biff/WritableRecordData;
.source "ProtectRecord.java"


# instance fields
.field private data:[B

.field private protection:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 47
    sget-object v0, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    iput-boolean p1, p0, Ljxl/write/biff/ProtectRecord;->protection:Z

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 51
    iput-object v0, p0, Ljxl/write/biff/ProtectRecord;->data:[B

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 66
    iget-object v0, p0, Ljxl/write/biff/ProtectRecord;->data:[B

    return-object v0
.end method
