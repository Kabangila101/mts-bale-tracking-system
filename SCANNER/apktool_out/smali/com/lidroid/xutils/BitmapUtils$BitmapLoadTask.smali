.class public Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
.super Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/lidroid/xutils/util/core/CompatibleAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_LOADING:I = 0x1

.field private static final PROGRESS_LOAD_STARTED:I


# instance fields
.field private final callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final containerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

.field final synthetic this$0:Lcom/lidroid/xutils/BitmapUtils;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-direct {p0}, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;-><init>()V

    .line 368
    sget-object p1, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 375
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->containerReference:Ljava/lang/ref/WeakReference;

    .line 376
    iput-object p5, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    .line 377
    iput-object p3, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    .line 378
    iput-object p4, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    return-void

    .line 372
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "args may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2

    .line 384
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 385
    :catchall_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$1(Lcom/lidroid/xutils/BitmapUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 387
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 397
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 398
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$2(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object p1

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1, v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 403
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$2(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object p1

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1, v0, v1, p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->downloadBitmap(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 404
    sget-object v0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->URI:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    :cond_3
    return-object p1

    :catchall_1
    move-exception v0

    .line 384
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getTargetContainer()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 466
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    invoke-static {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->access$3(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 459
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 459
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 439
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    .line 444
    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    .line 446
    iget-object v4, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 447
    iget-object v5, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    move-object v3, p1

    .line 442
    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    .line 451
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    .line 452
    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 449
    invoke-virtual {p1, v1, v0, v2}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9

    if-eqz p1, :cond_5

    .line 419
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 424
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    array-length v0, p1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    return-void

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iget-object v3, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v1, 0x2

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoading(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V

    goto :goto_0

    .line 426
    :cond_4
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1, v2, v0, v1}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateProgress(JJ)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
