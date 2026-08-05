.class public Lcom/UHF/scanlable/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleProgress"


# instance fields
.field private antiAlias:Z

.field private foreEndColcor:I

.field private foreStartColor:I

.field private mAnimTime:J

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mArcCenterX:I

.field private mArcColor:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcWidth:F

.field private mBgArcColor:I

.field private mBgArcPaint:Landroid/graphics/Paint;

.field private mBgArcWidth:F

.field private mCenterPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field private mDefaultSize:I

.field private mDottedLineCount:I

.field private mDottedLineWidth:F

.field private mExternalDottedLineRadius:F

.field protected mHeight:I

.field private mHint:Ljava/lang/CharSequence;

.field private mHintColor:I

.field private mHintOffset:F

.field private mHintPaint:Landroid/text/TextPaint;

.field private mHintSize:F

.field private mInsideDottedLineRadius:F

.field private mLineDistance:I

.field private mMaxValue:F

.field private mPercent:F

.field private mPrecision:I

.field private mPrecisionFormat:Ljava/lang/String;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mStartAngle:F

.field private mSweepAngle:F

.field private mTextOffsetPercentInRadius:F

.field private mUnit:Ljava/lang/CharSequence;

.field private mUnitColor:I

.field private mUnitOffset:F

.field private mUnitPaint:Landroid/text/TextPaint;

.field private mUnitSize:F

.field private mValue:F

.field private mValueColor:I

.field private mValueOffset:F

.field private mValuePaint:Landroid/text/TextPaint;

.field private mValueSize:F

.field protected mWidth:I

.field protected useGradient:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 82
    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineCount:I

    const/16 v0, 0x14

    .line 84
    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mLineDistance:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 86
    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineWidth:F

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/UHF/scanlable/CircleProgress;->useGradient:Z

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/UHF/scanlable/CircleProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/UHF/scanlable/CircleProgress;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/UHF/scanlable/CircleProgress;->mPercent:F

    return p0
.end method

.method static synthetic access$002(Lcom/UHF/scanlable/CircleProgress;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mPercent:F

    return p1
.end method

.method static synthetic access$102(Lcom/UHF/scanlable/CircleProgress;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/UHF/scanlable/CircleProgress;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/UHF/scanlable/CircleProgress;->mMaxValue:F

    return p0
.end method

.method public static dipToPx(Landroid/content/Context;F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dip"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 280
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineCount:I

    int-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    double-to-float v0, v2

    const/4 v1, 0x0

    .line 283
    :goto_0
    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineCount:I

    if-ge v1, v2, :cond_1

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v3, 0x4016cbe4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const v3, 0x407b53d1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    iget v3, p0, Lcom/UHF/scanlable/CircleProgress;->mArcCenterX:I

    int-to-float v3, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    iget v6, p0, Lcom/UHF/scanlable/CircleProgress;->mInsideDottedLineRadius:F

    mul-float v2, v2, v6

    add-float v7, v3, v2

    .line 290
    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mArcCenterX:I

    int-to-float v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget v6, p0, Lcom/UHF/scanlable/CircleProgress;->mInsideDottedLineRadius:F

    mul-float v3, v3, v6

    sub-float v8, v2, v3

    .line 292
    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mArcCenterX:I

    int-to-float v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v3, v9

    iget v6, p0, Lcom/UHF/scanlable/CircleProgress;->mExternalDottedLineRadius:F

    mul-float v3, v3, v6

    add-float v9, v2, v3

    .line 293
    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mArcCenterX:I

    int-to-float v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/UHF/scanlable/CircleProgress;->mExternalDottedLineRadius:F

    mul-float v3, v3, v4

    sub-float v10, v2, v3

    .line 295
    iget-object v11, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mStartAngle:F

    iget-object v1, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 305
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mSweepAngle:F

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mPercent:F

    mul-float v5, v0, v1

    .line 306
    iget-object v3, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mPrecisionFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mValueOffset:F

    iget-object v3, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mHintOffset:F

    iget-object v3, p0, Lcom/UHF/scanlable/CircleProgress;->mHintPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnit:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitOffset:F

    iget-object v3, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getBaselineOffsetFromY(Landroid/graphics/Paint;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paint"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 247
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public static getPrecisionFormat(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "precision"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "f"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mContext:Landroid/content/Context;

    const/high16 v0, 0x43160000    # 150.0f

    .line 103
    invoke-static {p1, v0}, Lcom/UHF/scanlable/CircleProgress;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mDefaultSize:I

    .line 104
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimator:Landroid/animation/ValueAnimator;

    .line 105
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    .line 106
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    .line 107
    invoke-direct {p0, p2}, Lcom/UHF/scanlable/CircleProgress;->initAttrs(Landroid/util/AttributeSet;)V

    .line 108
    invoke-direct {p0}, Lcom/UHF/scanlable/CircleProgress;->initPaint()V

    .line 109
    iget p1, p0, Lcom/UHF/scanlable/CircleProgress;->mValue:F

    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/CircleProgress;->setValue(F)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/UHF/scanlable/R$styleable;->CircleProgressBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    const/16 v0, 0xa

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHint:Ljava/lang/CharSequence;

    const/16 v0, 0xb

    const/high16 v1, -0x1000000

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHintColor:I

    const/16 v0, 0xc

    const/high16 v2, 0x41700000    # 15.0f

    .line 119
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHintSize:F

    const/16 v0, 0x16

    const/high16 v3, 0x42480000    # 50.0f

    .line 121
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValue:F

    const/16 v0, 0xe

    .line 122
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mMaxValue:F

    const/16 v0, 0xf

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mPrecision:I

    .line 125
    invoke-static {v0}, Lcom/UHF/scanlable/CircleProgress;->getPrecisionFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mPrecisionFormat:Ljava/lang/String;

    const/16 v0, 0x17

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValueColor:I

    const/16 v0, 0x18

    .line 127
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValueSize:F

    const/16 v0, 0x13

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnit:Ljava/lang/CharSequence;

    const/16 v0, 0x14

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitColor:I

    const/16 v0, 0x15

    const/high16 v1, 0x41f00000    # 30.0f

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitSize:F

    const/4 v0, 0x3

    .line 133
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcWidth:F

    const/16 v0, 0x10

    const/high16 v1, 0x43870000    # 270.0f

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mStartAngle:F

    const/16 v0, 0x11

    const/high16 v1, 0x43b40000    # 360.0f

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mSweepAngle:F

    const/4 v0, 0x4

    const/4 v1, -0x1

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcColor:I

    const/4 v0, 0x2

    const/high16 v1, -0x10000

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcColor:I

    const/4 v0, 0x5

    .line 139
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcWidth:F

    const/16 v0, 0x12

    const v1, 0x3ea8f5c3    # 0.33f

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mTextOffsetPercentInRadius:F

    const/16 v0, 0x32

    .line 141
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimTime:J

    .line 142
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineCount:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineCount:I

    .line 143
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mLineDistance:I

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mLineDistance:I

    .line 144
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineWidth:F

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineWidth:F

    const/16 v0, 0x9

    const v1, -0xffff01

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->foreStartColor:I

    const/16 v0, 0x8

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->foreEndColcor:I

    .line 147
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 151
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHintPaint:Landroid/text/TextPaint;

    .line 153
    iget-boolean v1, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHintPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mHintSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 157
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHintPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mHintColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHintPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    .line 162
    iget-boolean v1, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mValueSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 164
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mValueColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 167
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 169
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitPaint:Landroid/text/TextPaint;

    .line 170
    iget-boolean v1, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 171
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 172
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    .line 176
    iget-boolean v1, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mArcWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcPaint:Landroid/graphics/Paint;

    .line 186
    iget-boolean v1, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private static measureView(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "measureSpec",
            "defaultSize"
        }
    .end annotation

    .line 429
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 430
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 435
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private startAnimator(FFJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "animTime"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 349
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimator:Landroid/animation/ValueAnimator;

    .line 350
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/UHF/scanlable/CircleProgress$1;

    invoke-direct {p2, p0}, Lcom/UHF/scanlable/CircleProgress$1;-><init>(Lcom/UHF/scanlable/CircleProgress;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getAnimTime()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimTime:J

    return-wide v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 373
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mMaxValue:F

    return v0
.end method

.method public getPrecision()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mPrecision:I

    return v0
.end method

.method public getUnit()Ljava/lang/CharSequence;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mUnit:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 331
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mValue:F

    return v0
.end method

.method public isAntiAlias()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/UHF/scanlable/CircleProgress;->antiAlias:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 416
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 252
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/CircleProgress;->drawText(Landroid/graphics/Canvas;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/CircleProgress;->drawArc(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 196
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDefaultSize:I

    invoke-static {p1, v0}, Lcom/UHF/scanlable/CircleProgress;->measureView(II)I

    move-result p1

    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mDefaultSize:I

    .line 197
    invoke-static {p2, v0}, Lcom/UHF/scanlable/CircleProgress;->measureView(II)I

    move-result p2

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/UHF/scanlable/CircleProgress;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v3, p1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v3, v8

    float-to-int v0, v0

    .line 203
    iput v0, p0, Lcom/UHF/scanlable/CircleProgress;->mArcCenterX:I

    .line 204
    sget-object v9, Lcom/UHF/scanlable/CircleProgress;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged: w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; oldw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; oldh = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget p3, p0, Lcom/UHF/scanlable/CircleProgress;->mArcWidth:F

    iget p4, p0, Lcom/UHF/scanlable/CircleProgress;->mBgArcWidth:F

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 208
    invoke-virtual {p0}, Lcom/UHF/scanlable/CircleProgress;->getPaddingLeft()I

    move-result p4

    sub-int p4, p1, p4

    invoke-virtual {p0}, Lcom/UHF/scanlable/CircleProgress;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    float-to-int v0, p3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 209
    invoke-virtual {p0}, Lcom/UHF/scanlable/CircleProgress;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/UHF/scanlable/CircleProgress;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 208
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 211
    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    iput p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    .line 213
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    div-int/lit8 v0, p1, 0x2

    iput v0, p4, Landroid/graphics/Point;->x:I

    .line 214
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    div-int/lit8 v0, p2, 0x2

    iput v0, p4, Landroid/graphics/Point;->y:I

    .line 216
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    sub-float/2addr v0, v1

    div-float/2addr p3, v8

    sub-float/2addr v0, p3

    iput v0, p4, Landroid/graphics/RectF;->left:F

    .line 217
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iput v0, p4, Landroid/graphics/RectF;->top:F

    .line 218
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p4, Landroid/graphics/RectF;->right:F

    .line 219
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p4, Landroid/graphics/RectF;->bottom:F

    .line 223
    iget-object p3, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mValuePaint:Landroid/text/TextPaint;

    invoke-direct {p0, p4}, Lcom/UHF/scanlable/CircleProgress;->getBaselineOffsetFromY(Landroid/graphics/Paint;)F

    move-result p4

    add-float/2addr p3, p4

    iput p3, p0, Lcom/UHF/scanlable/CircleProgress;->mValueOffset:F

    .line 224
    iget-object p3, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mTextOffsetPercentInRadius:F

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mHintPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p4}, Lcom/UHF/scanlable/CircleProgress;->getBaselineOffsetFromY(Landroid/graphics/Paint;)F

    move-result p4

    add-float/2addr p3, p4

    iput p3, p0, Lcom/UHF/scanlable/CircleProgress;->mHintOffset:F

    .line 225
    iget-object p3, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget p4, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mTextOffsetPercentInRadius:F

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p4}, Lcom/UHF/scanlable/CircleProgress;->getBaselineOffsetFromY(Landroid/graphics/Paint;)F

    move-result p4

    add-float/2addr p3, p4

    iput p3, p0, Lcom/UHF/scanlable/CircleProgress;->mUnitOffset:F

    .line 227
    iget-boolean p3, p0, Lcom/UHF/scanlable/CircleProgress;->useGradient:Z

    if-eqz p3, :cond_0

    .line 228
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v4, p2

    iget v5, p0, Lcom/UHF/scanlable/CircleProgress;->foreEndColcor:I

    iget v6, p0, Lcom/UHF/scanlable/CircleProgress;->foreStartColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 229
    iget-object p4, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 231
    :cond_0
    iget-object p3, p0, Lcom/UHF/scanlable/CircleProgress;->mArcPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/UHF/scanlable/CircleProgress;->mArcColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSizeChanged: \u63a7\u4ef6\u5927\u5c0f = ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\u5706\u5fc3\u5750\u6807 = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mCenterPoint:Landroid/graphics/Point;

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\u5706\u534a\u5f84 = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/UHF/scanlable/CircleProgress;->mRadius:F

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ";\u5706\u7684\u5916\u63a5\u77e9\u5f62 = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    .line 237
    invoke-virtual {p1}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v8

    float-to-int p1, p1

    iget p2, p0, Lcom/UHF/scanlable/CircleProgress;->mLineDistance:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mExternalDottedLineRadius:F

    .line 242
    iget p2, p0, Lcom/UHF/scanlable/CircleProgress;->mDottedLineWidth:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mInsideDottedLineRadius:F

    return-void
.end method

.method public reset()V
    .locals 4

    .line 411
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mPercent:F

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/UHF/scanlable/CircleProgress;->startAnimator(FFJ)V

    return-void
.end method

.method public setAnimTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animTime"
        }
    .end annotation

    .line 404
    iput-wide p1, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimTime:J

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hint"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMaxValue(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxValue"
        }
    .end annotation

    .line 382
    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mMaxValue:F

    return-void
.end method

.method public setPrecision(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "precision"
        }
    .end annotation

    .line 395
    iput p1, p0, Lcom/UHF/scanlable/CircleProgress;->mPrecision:I

    .line 396
    invoke-static {p1}, Lcom/UHF/scanlable/CircleProgress;->getPrecisionFormat(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mPrecisionFormat:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress;->mUnit:Ljava/lang/CharSequence;

    return-void
.end method

.method public setValue(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 340
    iget v0, p0, Lcom/UHF/scanlable/CircleProgress;->mMaxValue:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 343
    :cond_0
    iget v1, p0, Lcom/UHF/scanlable/CircleProgress;->mPercent:F

    div-float/2addr p1, v0

    .line 345
    iget-wide v2, p0, Lcom/UHF/scanlable/CircleProgress;->mAnimTime:J

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/UHF/scanlable/CircleProgress;->startAnimator(FFJ)V

    return-void
.end method
