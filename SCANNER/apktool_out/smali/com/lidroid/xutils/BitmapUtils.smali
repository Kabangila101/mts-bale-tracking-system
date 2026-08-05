.class public Lcom/lidroid/xutils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private pauseTask:Z

.field private final pauseTaskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-direct {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    .line 62
    new-instance p1, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 84
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 73
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/BitmapUtils;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return p0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-object p0
.end method

.method static synthetic access$3(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 0

    .line 337
    invoke-static {p0, p1}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object p0

    return-object p0
.end method

.method private static bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)Z"
        }
    .end annotation

    .line 349
    invoke-static {p0, p2}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 352
    invoke-static {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->access$3(Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;

    move-result-object p2

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 354
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->cancel(Z)Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 340
    instance-of p1, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    if-eqz p1, :cond_0

    .line 341
    check-cast p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    .line 342
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache()V

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache()V

    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache()V

    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache(Ljava/lang/String;)V

    return-void
.end method

.method public closeCache()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->closeCache()V

    return-void
.end method

.method public configBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)V

    return-object p0
.end method

.method public configDefaultAutoRotation(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAutoRotation(Z)V

    return-object p0
.end method

.method public configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    return-object p0
.end method

.method public configDefaultBitmapMaxSize(II)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    return-object p0
.end method

.method public configDefaultBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    return-object p0
.end method

.method public configDefaultCacheExpiry(J)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultCacheExpiry(J)V

    return-object p0
.end method

.method public configDefaultConnectTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultConnectTimeout(I)V

    return-object p0
.end method

.method public configDefaultDisplayConfig(Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    return-object p0
.end method

.method public configDefaultImageLoadAnimation(Landroid/view/animation/Animation;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public configDefaultLoadFailedImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadingImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultReadTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultReadTimeout(I)V

    return-object p0
.end method

.method public configDefaultShowOriginal(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setShowOriginal(Z)V

    return-object p0
.end method

.method public configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheEnabled(Z)V

    return-object p0
.end method

.method public configDiskCacheFileNameGenerator(Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/util/core/LruDiskCache$DiskCacheFileNameGenerator;)V

    return-object p0
.end method

.method public configDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)V

    return-object p0
.end method

.method public configGlobalConfig(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-object p0
.end method

.method public configMemoryCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheEnabled(Z)V

    return-object p0
.end method

.method public configThreadPoolSize(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setThreadPoolSize(I)V

    return-object p0
.end method

.method public display(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-nez p4, :cond_1

    .line 226
    new-instance p4, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;

    invoke-direct {p4}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    :cond_1
    if-eqz p3, :cond_2

    .line 229
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    if-ne p3, v0, :cond_3

    .line 230
    :cond_2
    iget-object p3, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->cloneNew()Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    move-result-object p3

    .line 234
    :cond_3
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 237
    invoke-virtual {p4, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 247
    invoke-virtual {p4, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 253
    sget-object v5, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 248
    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    goto :goto_0

    .line 254
    :cond_5
    invoke-static {p1, p2, p4}, Lcom/lidroid/xutils/BitmapUtils;->bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 256
    new-instance v6, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;-><init>(Lcom/lidroid/xutils/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 258
    new-instance p2, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    .line 259
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 258
    invoke-direct {p2, p3, v6}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V

    .line 261
    invoke-virtual {p4, p1, p2}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapLoadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v6, p1, p2}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    :cond_6
    :goto_0
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    return-void
.end method

.method public flushCache()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->flushCache()V

    return-void
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_0

    .line 308
    iget-object p2, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public pauseTasks()V
    .locals 1

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 324
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils;->flushCache()V

    return-void
.end method

.method public resumeTasks()V
    .locals 2

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 317
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopTasks()V
    .locals 2

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 329
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
