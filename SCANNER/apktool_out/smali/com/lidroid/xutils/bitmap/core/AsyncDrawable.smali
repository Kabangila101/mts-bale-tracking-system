.class public Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AsyncDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# instance fields
.field private final baseDrawable:Landroid/graphics/drawable/Drawable;

.field private final bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 28
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bitmapWorkerTask may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "drawable may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getState()[I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
