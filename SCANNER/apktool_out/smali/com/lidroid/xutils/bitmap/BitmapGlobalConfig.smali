.class public Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
.super Ljava/lang/Object;
.source "BitmapGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;
    }
.end annotation


# static fields
.field public static final MIN_DISK_CACHE_SIZE:I = 0xa00000

.field public static final MIN_MEMORY_CACHE_SIZE:I = 0x200000

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private _dirty_params_bitmapLoadExecutor:Z

.field private bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

.field private bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

.field private bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private defaultCacheExpiry:J

.field private defaultConnectTimeout:I

.field private defaultReadTimeout:I

.field private diskCacheEnabled:Z

.field private diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

.field private diskCachePath:Ljava/lang/String;

.field private diskCacheSize:I

.field private downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

.field private mContext:Landroid/content/Context;

.field private memoryCacheEnabled:Z

.field private memoryCacheSize:I

.field private threadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$1;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$1;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x400000

    .line 42
    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    const/high16 v0, 0x3200000

    .line 44
    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheSize:I

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheEnabled:Z

    const/4 v1, 0x5

    .line 52
    iput v1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->threadPoolSize:I

    .line 53
    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    const-wide v0, 0x9a7ec800L

    .line 56
    iput-wide v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultCacheExpiry:J

    const/16 v0, 0x3a98

    .line 57
    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultConnectTimeout:I

    .line 58
    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultReadTimeout:I

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->initBitmapCache()V

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    return-object p0
.end method

.method private getMemoryClass()I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method private initBitmapCache()V
    .locals 6

    .line 89
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    .line 90
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .line 356
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 4

    .line 368
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public clearDiskCache()V
    .locals 4

    .line 364
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 4

    .line 376
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public clearMemoryCache()V
    .locals 4

    .line 360
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 4

    .line 372
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public closeCache()V
    .locals 4

    .line 384
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public flushCache()V
    .locals 4

    .line 380
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    return-void
.end method

.method public getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    return-object v0
.end method

.method public getBitmapCacheListener()Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    return-object v0
.end method

.method public getBitmapLoadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getThreadPoolSize()I

    move-result v0

    sget-object v1, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDefaultCacheExpiry()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultCacheExpiry:J

    return-wide v0
.end method

.method public getDefaultConnectTimeout()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultConnectTimeout:I

    return v0
.end method

.method public getDefaultReadTimeout()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultReadTimeout:I

    return v0
.end method

.method public getDiskCacheFileNameGenerator()Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    return-object v0
.end method

.method public getDiskCachePath()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    const-string v1, "xBitmapCache"

    invoke-static {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCacheSize()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheSize:I

    return v0
.end method

.method public getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setContext(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDefaultCacheExpiry()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setDefaultExpiry(J)V

    .line 106
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDefaultConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setDefaultConnectTimeout(I)V

    .line 107
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDefaultReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setDefaultReadTimeout(I)V

    .line 108
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    return-object v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    return v0
.end method

.method public getThreadPoolSize()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->threadPoolSize:I

    return v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheEnabled:Z

    return v0
.end method

.method public isMemoryCacheEnabled()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheEnabled:Z

    return v0
.end method

.method public setBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    return-void
.end method

.method public setDefaultCacheExpiry(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultCacheExpiry:J

    return-void
.end method

.method public setDefaultConnectTimeout(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultConnectTimeout:I

    return-void
.end method

.method public setDefaultReadTimeout(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultReadTimeout:I

    return-void
.end method

.method public setDiskCacheEnabled(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheEnabled:Z

    return-void
.end method

.method public setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;)V
    .locals 1

    .line 227
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheFileNameGenerator:Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    .line 228
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;)V

    :cond_0
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 1

    const/high16 v0, 0xa00000

    if-lt p1, v0, :cond_0

    .line 180
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheSize:I

    .line 181
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setDiskCacheSize(I)V

    :cond_0
    return-void
.end method

.method public setDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    return-void
.end method

.method public setMemCacheSizePercent(F)V
    .locals 1

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getMemoryClass()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/high16 v0, 0x44800000    # 1024.0f

    mul-float p1, p1, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    .line 169
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setMemoryCacheSize(I)V

    :cond_0
    return-void

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMemoryCacheEnabled(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheEnabled:Z

    return-void
.end method

.method public setMemoryCacheSize(I)V
    .locals 1

    const/high16 v0, 0x200000

    if-lt p1, v0, :cond_0

    .line 152
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    .line 153
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setMemoryCacheSize(I)V

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 157
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 192
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->threadPoolSize:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    .line 194
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->threadPoolSize:I

    :cond_0
    return-void
.end method
