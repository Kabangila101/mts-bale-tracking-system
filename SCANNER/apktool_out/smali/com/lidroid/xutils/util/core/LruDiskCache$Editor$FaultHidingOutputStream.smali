.class Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    .line 918
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .locals 0

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 945
    :catchall_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 954
    :catchall_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 926
    :catchall_0
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 934
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 936
    :catchall_0
    iget-object p1, p0, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/util/core/LruDiskCache$Editor;Z)V

    :goto_0
    return-void
.end method
