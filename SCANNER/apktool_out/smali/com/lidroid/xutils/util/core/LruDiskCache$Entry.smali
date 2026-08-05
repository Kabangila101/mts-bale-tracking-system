.class final Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/util/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

.field private final diskKey:Ljava/lang/String;

.field private expiryTimestamp:J

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/lidroid/xutils/util/core/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;)V
    .locals 2

    .line 985
    iput-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/util/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 963
    iput-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->expiryTimestamp:J

    .line 986
    iput-object p2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    .line 987
    invoke-static {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->access$7(Lcom/lidroid/xutils/util/core/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)V
    .locals 0

    .line 985
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Z
    .locals 0

    .line 973
    iget-boolean p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->readable:Z

    return p0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;J)V
    .locals 0

    .line 963
    iput-wide p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->expiryTimestamp:J

    return-void
.end method

.method static synthetic access$10(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J
    .locals 2

    .line 983
    iget-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;J)V
    .locals 0

    .line 983
    iput-wide p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->sequenceNumber:J

    return-void
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    return-object p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Ljava/lang/String;
    .locals 0

    .line 961
    iget-object p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Z)V
    .locals 0

    .line 973
    iput-boolean p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->readable:Z

    return-void
.end method

.method static synthetic access$6(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    return-void
.end method

.method static synthetic access$7(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->lengths:[J

    return-object p0
.end method

.method static synthetic access$9(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J
    .locals 2

    .line 963
    iget-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->expiryTimestamp:J

    return-wide v0
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/util/core/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->access$7(Lcom/lidroid/xutils/util/core/LruDiskCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1007
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/util/core/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->access$7(Lcom/lidroid/xutils/util/core/LruDiskCache;)I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->lengths:[J

    add-int v2, v0, p2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :catch_0
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 1003
    :cond_1
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4

    .line 1020
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/util/core/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4

    .line 1024
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/util/core/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 993
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
