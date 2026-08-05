.class public Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;
.super Lcom/lidroid/xutils/bitmap/download/Downloader;
.source "DefaultDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/download/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "*>;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_9

    .line 43
    invoke-virtual {p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 48
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->trustAllSSLForHttpsURLConnection()V

    const-wide/16 v3, 0x0

    :try_start_0
    const-string v5, "/"

    .line 54
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result p1

    int-to-long v6, p1

    .line 57
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v8, v10

    move-object v2, p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto/16 :goto_5

    :cond_1
    :try_start_2
    const-string v5, "assets/"

    .line 59
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v6, v5

    .line 62
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    move-object v2, v5

    goto :goto_1

    .line 65
    :cond_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultConnectTimeout()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 68
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultReadTimeout()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 69
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :try_start_3
    invoke-virtual {p1}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v6

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v8

    add-long/2addr v6, v8

    :cond_3
    move-wide v8, v6

    .line 72
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v6, p1

    goto :goto_0

    .line 75
    :goto_1
    :try_start_4
    invoke-virtual {p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 79
    :goto_2
    invoke-virtual {v2, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_5

    .line 85
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 90
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-wide v0, v8

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    .line 80
    :try_start_5
    invoke-virtual {p2, p1, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    .line 82
    invoke-virtual {p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {p3, v6, v7, v3, v4}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->updateProgress(JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 90
    :cond_7
    :goto_3
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v0

    :cond_8
    :goto_4
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v0

    :catchall_1
    move-exception p2

    move-object v2, v5

    goto :goto_5

    :catchall_2
    move-exception p2

    .line 88
    :goto_5
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 90
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_6
    return-wide v0

    :catchall_3
    move-exception p1

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    throw p1

    :cond_9
    :goto_7
    return-wide v0
.end method
