.class public final Lcom/lidroid/xutils/util/core/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;,
        Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;,
        Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;,
        Lcom/lidroid/xutils/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;,
        Lcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;,
        Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,64}"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 785
    new-instance v0, Lcom/lidroid/xutils/util/core/LruDiskCache$2;

    invoke-direct {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 140
    iput-wide v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    .line 143
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 151
    iput-wide v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->nextSequenceNumber:J

    .line 157
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 158
    new-instance v2, Lcom/lidroid/xutils/util/core/LruDiskCache$1;

    invoke-direct {v2, p0}, Lcom/lidroid/xutils/util/core/LruDiskCache$1;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;)V

    iput-object v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 1241
    new-instance v2, Lcom/lidroid/xutils/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;

    invoke-direct {v2, p0}, Lcom/lidroid/xutils/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;)V

    iput-object v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    .line 175
    iput-object v1, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    .line 176
    iput v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->appVersion:I

    .line 177
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    .line 178
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 179
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    .line 180
    iput v1, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    move-wide/from16 v1, p4

    .line 181
    iput-wide v1, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->maxSize:J

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/util/core/LruDiskCache;)Ljava/io/Writer;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/util/core/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/lidroid/xutils/util/core/LruDiskCache;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/util/core/LruDiskCache;)Z
    .locals 0

    .line 618
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/util/core/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/lidroid/xutils/util/core/LruDiskCache;I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/util/core/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-static {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7(Lcom/lidroid/xutils/util/core/LruDiskCache;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    return p0
.end method

.method static synthetic access$8(Lcom/lidroid/xutils/util/core/LruDiskCache;)Ljava/io/File;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .locals 1

    .line 785
    sget-object v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 560
    :try_start_0
    invoke-static {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    move-result-object v0

    .line 561
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_b

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 566
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 567
    :goto_0
    iget v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    invoke-static {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 572
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 573
    invoke-virtual {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->abort()V

    .line 570
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :cond_3
    :goto_1
    iget p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v1, p1, :cond_8

    .line 595
    iget p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 596
    invoke-static {v0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    .line 597
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_4

    .line 598
    invoke-static {v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Z)V

    .line 599
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " t_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 601
    iget-wide p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$11(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;J)V

    goto :goto_2

    .line 604
    :cond_4
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "REMOVE "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 607
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 609
    iget-wide p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    iget-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_6

    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 610
    :cond_6
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :cond_7
    monitor-exit p0

    return-void

    .line 580
    :cond_8
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 582
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 583
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 584
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 585
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 586
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 587
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 588
    iget-wide v7, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    goto :goto_3

    .line 591
    :cond_9
    invoke-static {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 562
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1054
    array-length v1, v0

    const/4 p0, 0x0

    :goto_0
    if-lt p0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, v0, p0

    .line 1055
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1056
    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 1058
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1059
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1052
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a readable directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->checkNotClosed()V

    .line 504
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 507
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 508
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 511
    :try_start_1
    new-instance v0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)V

    .line 512
    iget-object p2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 513
    :cond_2
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 514
    monitor-exit p0

    return-object v3

    .line 517
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    .line 518
    invoke-static {v0, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    .line 521
    iget-object p3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIRTY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->checkNotClosed()V

    .line 435
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 438
    monitor-exit p0

    return-object v2

    .line 441
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 442
    monitor-exit p0

    return-object v2

    .line 446
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gez v9, :cond_6

    .line 447
    :goto_0
    iget v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v8, v3, :cond_3

    .line 455
    iget v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    .line 456
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "REMOVE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 457
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :cond_2
    monitor-exit p0

    return-object v2

    .line 448
    :cond_3
    :try_start_3
    invoke-virtual {v1, v8}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 449
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 450
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_5
    :goto_1
    iget-wide v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v9, v5, v8

    sub-long/2addr v3, v9

    iput-wide v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    .line 453
    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 467
    :cond_6
    iget v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    new-array v6, v3, [Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    .line 469
    :goto_2
    :try_start_4
    iget v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v3, v4, :cond_8

    .line 484
    :try_start_5
    iget v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    .line 485
    iget-object v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "READ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 486
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 487
    iget-object v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 490
    :cond_7
    new-instance v9, Lcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v9

    .line 470
    :cond_8
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 474
    :catch_0
    :goto_3
    :try_start_7
    iget v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v8, v0, :cond_9

    goto :goto_4

    .line 475
    :cond_9
    aget-object v0, v6, v8

    if-eqz v0, :cond_a

    .line 476
    aget-object v0, v6, v8

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 481
    :cond_a
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .line 620
    iget v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/util/core/LruDiskCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    if-lez p2, :cond_3

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 210
    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/util/core/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 215
    :cond_1
    :goto_0
    new-instance v0, Lcom/lidroid/xutils/util/core/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/util/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 216
    iget-object v1, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    :try_start_0
    invoke-direct {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->readJournal()V

    .line 219
    invoke-direct {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->processJournal()V

    .line 220
    new-instance v1, Ljava/io/BufferedWriter;

    .line 221
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 220
    iput-object v1, v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->delete()V

    .line 234
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 235
    new-instance v0, Lcom/lidroid/xutils/util/core/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/util/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 236
    invoke-direct {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->rebuildJournal()V

    return-object v0

    .line 199
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 330
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    .line 332
    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 333
    :goto_1
    iget v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v3, v2, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    iget-wide v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 337
    invoke-static {v1, v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    .line 338
    :goto_2
    iget v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v3, v2, :cond_3

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 340
    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1032
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [C

    .line 1035
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1038
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1041
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 1036
    :try_start_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1040
    :goto_1
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1041
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1042
    throw v0
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    const/4 v1, 0x0

    .line 243
    :try_start_0
    new-instance v2, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p0, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 249
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 250
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    iget v7, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    iget v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 253
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 254
    :cond_0
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 269
    :goto_1
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 270
    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 280
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 283
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 284
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 289
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 292
    :cond_1
    iget-object v5, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 294
    new-instance v5, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    invoke-direct {v5, p0, v4, v6}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)V

    .line 295
    iget-object v7, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v7, "CLEAN"

    .line 298
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    .line 299
    invoke-static {v5, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Z)V

    .line 300
    invoke-static {v5, v6}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    add-int/2addr v0, v1

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    array-length v3, v0

    if-lez v3, :cond_6

    const/4 v3, 0x0

    .line 304
    :try_start_0
    aget-object v4, v0, v3

    const-string v6, "t_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    aget-object v3, v0, v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;J)V

    .line 306
    invoke-static {v5, v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-wide v6, 0x7fffffffffffffffL

    .line 308
    invoke-static {v5, v6, v7}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;J)V

    .line 309
    invoke-static {v5, v0, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_5

    const-string v4, "DIRTY"

    .line 315
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 316
    new-instance p1, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache;Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    invoke-static {v5, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;)V

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_7

    const/4 v0, 0x4

    if-ne v1, v0, :cond_7

    const-string v0, "READ"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_0
    return-void

    .line 320
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 353
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 v0, 0x0

    .line 358
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 359
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 358
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "libcore.io.DiskLruCache"

    .line 360
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 361
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    .line 362
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 363
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    iget v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 365
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 367
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 368
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 378
    :try_start_3
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 381
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/lidroid/xutils/util/core/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 387
    new-instance v0, Ljava/io/BufferedWriter;

    .line 388
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v1, "US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 387
    iput-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 389
    monitor-exit p0

    return-void

    .line 370
    :cond_2
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    .line 371
    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_3

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " t_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 378
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 379
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 636
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->checkNotClosed()V

    .line 637
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 639
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 643
    :cond_0
    :goto_0
    iget v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_2

    .line 652
    iget v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->redundantOpCount:I

    .line 653
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 654
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 657
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :cond_1
    monitor-exit p0

    return v1

    .line 644
    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 645
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 646
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 648
    :cond_4
    :goto_1
    iget-wide v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    .line 649
    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 399
    invoke-static {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 402
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    :goto_0
    iget-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->maxSize:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .line 721
    sget-object v0, Lcom/lidroid/xutils/util/core/LruDiskCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 691
    monitor-exit p0

    return-void

    .line 693
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 698
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->trimToSize()V

    .line 699
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    monitor-exit p0

    return-void

    .line 693
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;

    .line 694
    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 695
    invoke-static {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 717
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 499
    invoke-direct {p0, p1, v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 680
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->checkNotClosed()V

    .line 681
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->trimToSize()V

    .line 682
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/util/core/LruDiskCache$Snapshot;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 420
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->directory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getDiskCacheFileNameGenerator()Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/LruDiskCache;->checkNotClosed()V

    .line 409
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 412
    monitor-exit p0

    return-wide v0

    .line 414
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/util/core/LruDiskCache$Entry;)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 538
    :try_start_0
    iget-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/util/core/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1249
    iput-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    :cond_0
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 546
    :try_start_0
    iput-wide p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->maxSize:J

    .line 547
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 556
    :try_start_0
    iget-wide v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
