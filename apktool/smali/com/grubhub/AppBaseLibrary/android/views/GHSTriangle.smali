.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private getTrianglePath()Landroid/graphics/Path;
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getTriangleVertices()[F

    move-result-object v0

    .line 84
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 85
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    return-object v1
.end method

.method private getTriangleVertices()[F
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 100
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->b:I

    if-ne v1, v2, :cond_0

    .line 101
    aput v3, v0, v5

    .line 102
    aput v3, v0, v2

    .line 103
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    aput v1, v0, v6

    .line 104
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 105
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 106
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 108
    :cond_0
    aput v3, v0, v5

    .line 109
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 110
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    aput v1, v0, v6

    .line 111
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 112
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 113
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 49
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/n;->com_grubhub_AppBaseLibrary_android_views_GHSTriangle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->a:I

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->b:I

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 71
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->getTrianglePath()Landroid/graphics/Path;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->b:I

    .line 63
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->invalidate()V

    .line 64
    return-void
.end method
