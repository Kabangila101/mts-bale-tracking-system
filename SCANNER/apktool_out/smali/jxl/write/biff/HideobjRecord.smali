.class Ljxl/write/biff/HideobjRecord;
.super Ljxl/biff/WritableRecordData;
.source "HideobjRecord.java"


# instance fields
.field private data:[B

.field private hideAll:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 47
    sget-object v0, Ljxl/biff/Type;->HIDEOBJ:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    iput-boolean p1, p0, Ljxl/write/biff/HideobjRecord;->hideAll:Z

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 50
    iput-object v1, p0, Ljxl/write/biff/HideobjRecord;->data:[B

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 54
    invoke-static {v0, v1, p1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 65
    iget-object v0, p0, Ljxl/write/biff/HideobjRecord;->data:[B

    return-object v0
.end method
