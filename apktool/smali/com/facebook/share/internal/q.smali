.class public Lcom/facebook/share/internal/q;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/facebook/share/internal/r;

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I


# direct methods
.method private a(IIII)V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/share/internal/q;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/internal/q;->g:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/facebook/share/internal/q;->g:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->g:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/facebook/share/internal/q;->g:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFF)V
    .locals 7

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 171
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 173
    iget v1, p0, Lcom/facebook/share/internal/q;->e:F

    mul-float/2addr v1, v5

    .line 176
    new-instance v2, Landroid/graphics/RectF;

    add-float v3, p2, v1

    add-float v4, p3, v1

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 179
    iget-object v2, p0, Lcom/facebook/share/internal/q;->b:Lcom/facebook/share/internal/r;

    sget-object v3, Lcom/facebook/share/internal/r;->TOP:Lcom/facebook/share/internal/r;

    if-ne v2, v3, :cond_0

    .line 180
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->d:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    sub-float v2, p4, p2

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->c:F

    sub-float v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->d:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    :cond_0
    iget v2, p0, Lcom/facebook/share/internal/q;->e:F

    sub-float v2, p4, v2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p4, v1

    add-float v4, p3, v1

    invoke-direct {v2, v3, p3, p4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 192
    iget-object v2, p0, Lcom/facebook/share/internal/q;->b:Lcom/facebook/share/internal/r;

    sget-object v3, Lcom/facebook/share/internal/r;->RIGHT:Lcom/facebook/share/internal/r;

    if-ne v2, v3, :cond_1

    .line 193
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/share/internal/q;->d:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    iget v2, p0, Lcom/facebook/share/internal/q;->c:F

    add-float/2addr v2, p4

    sub-float v3, p5, p3

    div-float/2addr v3, v5

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/share/internal/q;->d:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    :cond_1
    iget v2, p0, Lcom/facebook/share/internal/q;->e:F

    sub-float v2, p5, v2

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p4, v1

    sub-float v4, p5, v1

    invoke-direct {v2, v3, v4, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 205
    iget-object v2, p0, Lcom/facebook/share/internal/q;->b:Lcom/facebook/share/internal/r;

    sget-object v3, Lcom/facebook/share/internal/r;->BOTTOM:Lcom/facebook/share/internal/r;

    if-ne v2, v3, :cond_2

    .line 206
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->d:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    sub-float v2, p4, p2

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->c:F

    add-float/2addr v3, p5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/share/internal/q;->d:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    :cond_2
    iget v2, p0, Lcom/facebook/share/internal/q;->e:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p5, v1

    add-float/2addr v1, p2

    invoke-direct {v2, p2, v3, v1, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v6, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 218
    iget-object v1, p0, Lcom/facebook/share/internal/q;->b:Lcom/facebook/share/internal/r;

    sget-object v2, Lcom/facebook/share/internal/r;->LEFT:Lcom/facebook/share/internal/r;

    if-ne v1, v2, :cond_3

    .line 219
    sub-float v1, p5, p3

    iget v2, p0, Lcom/facebook/share/internal/q;->d:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    iget v1, p0, Lcom/facebook/share/internal/q;->c:F

    sub-float v1, p2, v1

    sub-float v2, p5, p3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    sub-float v1, p5, p3

    iget v2, p0, Lcom/facebook/share/internal/q;->d:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    :cond_3
    iget v1, p0, Lcom/facebook/share/internal/q;->e:F

    add-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget-object v1, p0, Lcom/facebook/share/internal/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p0}, Lcom/facebook/share/internal/q;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/share/internal/q;->getPaddingLeft()I

    move-result v2

    .line 105
    invoke-virtual {p0}, Lcom/facebook/share/internal/q;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/share/internal/q;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/facebook/share/internal/q;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/share/internal/q;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    .line 107
    sget-object v4, Lcom/facebook/share/internal/q$1;->a:[I

    iget-object v5, p0, Lcom/facebook/share/internal/q;->b:Lcom/facebook/share/internal/r;

    invoke-virtual {v5}, Lcom/facebook/share/internal/r;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 122
    :goto_0
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v1

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/internal/q;->a(Landroid/graphics/Canvas;FFFF)V

    .line 123
    return-void

    .line 109
    :pswitch_0
    int-to-float v0, v0

    iget v4, p0, Lcom/facebook/share/internal/q;->c:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    int-to-float v2, v2

    iget v4, p0, Lcom/facebook/share/internal/q;->c:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    int-to-float v3, v3

    iget v4, p0, Lcom/facebook/share/internal/q;->c:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    int-to-float v1, v1

    iget v4, p0, Lcom/facebook/share/internal/q;->c:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setCaretPosition(Lcom/facebook/share/internal/r;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iput-object p1, p0, Lcom/facebook/share/internal/q;->b:Lcom/facebook/share/internal/r;

    .line 83
    sget-object v0, Lcom/facebook/share/internal/q$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/share/internal/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget v0, p0, Lcom/facebook/share/internal/q;->h:I

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/facebook/share/internal/q;->a(IIII)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget v0, p0, Lcom/facebook/share/internal/q;->h:I

    invoke-direct {p0, v2, v0, v2, v2}, Lcom/facebook/share/internal/q;->a(IIII)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget v0, p0, Lcom/facebook/share/internal/q;->h:I

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/facebook/share/internal/q;->a(IIII)V

    goto :goto_0

    .line 94
    :pswitch_3
    iget v0, p0, Lcom/facebook/share/internal/q;->h:I

    invoke-direct {p0, v2, v2, v2, v0}, Lcom/facebook/share/internal/q;->a(IIII)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/share/internal/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
