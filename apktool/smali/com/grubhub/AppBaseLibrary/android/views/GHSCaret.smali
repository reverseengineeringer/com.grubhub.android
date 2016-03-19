.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;
.super Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private getCaretPath()Landroid/graphics/Path;
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getCaretVertices()[F

    move-result-object v0

    .line 69
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 70
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    return-object v1
.end method

.method private getCaretVertices()[F
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 101
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->b:I

    if-ne v1, v2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMinWidth()F

    move-result v1

    aput v1, v0, v4

    .line 103
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMinHeight()F

    move-result v1

    aput v1, v0, v2

    .line 104
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v5

    .line 105
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMaxHeight()F

    move-result v1

    aput v1, v0, v6

    .line 106
    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMaxWidth()F

    move-result v2

    aput v2, v0, v1

    .line 107
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMinHeight()F

    move-result v2

    aput v2, v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMinWidth()F

    move-result v1

    aput v1, v0, v4

    .line 110
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMaxHeight()F

    move-result v1

    aput v1, v0, v2

    .line 111
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v5

    .line 112
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMinHeight()F

    move-result v1

    aput v1, v0, v6

    .line 113
    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMaxWidth()F

    move-result v2

    aput v2, v0, v1

    .line 114
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMaxHeight()F

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method private getMaxHeight()F
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMaxWidth()F
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMinHeight()F
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getMinWidth()F
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 49
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 55
    const/high16 v2, 0x40000000    # 2.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->getCaretPath()Landroid/graphics/Path;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    return-void
.end method
