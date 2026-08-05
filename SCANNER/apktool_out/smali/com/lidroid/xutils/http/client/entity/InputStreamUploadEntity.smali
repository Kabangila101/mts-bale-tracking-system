.class public Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamUploadEntity.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private final content:Ljava/io/InputStream;

.field private final length:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    .line 46
    iput-wide p2, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_8

    .line 67
    iget-object v2, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    const/16 v3, 0x800

    :try_start_0
    new-array v3, v3, [B

    .line 71
    iget-wide v4, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "stop"

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gez v11, :cond_3

    .line 73
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v7, :cond_1

    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {v0, v3, v10, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    iget-wide v8, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v4, v4

    add-long v14, v8, v4

    iput-wide v14, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 76
    iget-object v11, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v11, :cond_0

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    const/16 v16, 0x0

    .line 77
    invoke-interface/range {v11 .. v16}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    cmp-long v11, v4, v8

    if-gtz v11, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v11, 0x800

    .line 86
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v2, v3, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-ne v11, v7, :cond_6

    .line 100
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 101
    iget-object v12, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v12, :cond_5

    .line 102
    iget-wide v13, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v3, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/16 v17, 0x1

    move-wide v15, v3

    invoke-interface/range {v12 .. v17}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_5
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 90
    :cond_6
    :try_start_2
    invoke-virtual {v0, v3, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v11, v11

    sub-long/2addr v4, v11

    .line 92
    iget-wide v13, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 93
    iget-object v15, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v15, :cond_3

    .line 94
    iget-wide v13, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    const/16 v20, 0x0

    move-wide/from16 v16, v13

    move-wide/from16 v18, v11

    invoke-interface/range {v15 .. v20}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_1

    .line 95
    :cond_7
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 105
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    throw v0

    .line 65
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output stream may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
