.class public Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;
.super Ljava/lang/Object;
.source "PauseOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

.field private final externalListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final pauseOnFling:Z

.field private final pauseOnScroll:Z


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/BitmapUtils;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;-><init>(Lcom/lidroid/xutils/BitmapUtils;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/BitmapUtils;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    .line 52
    iput-boolean p2, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnScroll:Z

    .line 53
    iput-boolean p3, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnFling:Z

    .line 54
    iput-object p4, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnFling:Z

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    invoke-virtual {v0}, Lcom/lidroid/xutils/BitmapUtils;->pauseTasks()V

    goto :goto_0

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnScroll:Z

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    invoke-virtual {v0}, Lcom/lidroid/xutils/BitmapUtils;->pauseTasks()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    invoke-virtual {v0}, Lcom/lidroid/xutils/BitmapUtils;->resumeTasks()V

    .line 74
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_4

    .line 75
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_4
    return-void
.end method
