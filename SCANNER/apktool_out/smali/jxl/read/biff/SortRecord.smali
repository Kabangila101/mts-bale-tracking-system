.class public Ljxl/read/biff/SortRecord;
.super Ljxl/biff/RecordData;
.source "SortRecord.java"


# instance fields
.field private col1Name:Ljava/lang/String;

.field private col1Size:I

.field private col2Name:Ljava/lang/String;

.field private col2Size:I

.field private col3Name:Ljava/lang/String;

.field private col3Size:I

.field private optionFlags:B

.field private sortCaseSensitive:Z

.field private sortColumns:Z

.field private sortKey1Desc:Z

.field private sortKey2Desc:Z

.field private sortKey3Desc:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5

    .line 50
    sget-object v0, Ljxl/biff/Type;->SORT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortColumns:Z

    .line 39
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey1Desc:Z

    .line 40
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey2Desc:Z

    .line 41
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey3Desc:Z

    .line 42
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortCaseSensitive:Z

    .line 52
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 54
    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljxl/read/biff/SortRecord;->optionFlags:B

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 56
    :goto_0
    iput-boolean v2, p0, Ljxl/read/biff/SortRecord;->sortColumns:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 57
    :goto_1
    iput-boolean v2, p0, Ljxl/read/biff/SortRecord;->sortKey1Desc:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 58
    :goto_2
    iput-boolean v2, p0, Ljxl/read/biff/SortRecord;->sortKey2Desc:Z

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 59
    :goto_3
    iput-boolean v2, p0, Ljxl/read/biff/SortRecord;->sortKey3Desc:Z

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 60
    :cond_4
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortCaseSensitive:Z

    const/4 v0, 0x2

    .line 64
    aget-byte v1, p1, v0

    iput v1, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    const/4 v2, 0x3

    .line 65
    aget-byte v2, p1, v2

    iput v2, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    const/4 v2, 0x4

    .line 66
    aget-byte v2, p1, v2

    iput v2, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    const/4 v2, 0x5

    const/4 v3, 0x6

    .line 68
    aget-byte v2, p1, v2

    if-nez v2, :cond_5

    .line 70
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Ljxl/read/biff/SortRecord;->col1Name:Ljava/lang/String;

    .line 71
    iget v1, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    goto :goto_4

    .line 75
    :cond_5
    invoke-static {p1, v1, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/SortRecord;->col1Name:Ljava/lang/String;

    .line 76
    iget v1, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    mul-int/lit8 v1, v1, 0x2

    :goto_4
    add-int/2addr v3, v1

    .line 79
    iget v1, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    const-string v2, ""

    if-lez v1, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 81
    aget-byte v3, p1, v3

    if-nez v3, :cond_6

    .line 83
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    invoke-direct {v0, p1, v4, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    .line 84
    iget v0, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    add-int v3, v4, v0

    goto :goto_5

    .line 88
    :cond_6
    invoke-static {p1, v1, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    .line 89
    iget v1, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v4, v1

    goto :goto_5

    .line 94
    :cond_7
    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    .line 96
    :goto_5
    iget v0, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    if-lez v0, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 98
    aget-byte v2, p1, v3

    if-nez v2, :cond_8

    .line 100
    new-instance v0, Ljava/lang/String;

    iget v2, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    goto :goto_6

    .line 105
    :cond_8
    invoke-static {p1, v0, v1}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    goto :goto_6

    .line 111
    :cond_9
    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    :goto_6
    return-void
.end method


# virtual methods
.method public getSortCaseSensitive()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortCaseSensitive:Z

    return v0
.end method

.method public getSortCol1Name()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Ljxl/read/biff/SortRecord;->col1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortCol2Name()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortCol3Name()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortColumns()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortColumns:Z

    return v0
.end method

.method public getSortKey1Desc()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey1Desc:Z

    return v0
.end method

.method public getSortKey2Desc()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey2Desc:Z

    return v0
.end method

.method public getSortKey3Desc()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey3Desc:Z

    return v0
.end method
