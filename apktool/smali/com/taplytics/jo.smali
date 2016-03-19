.class public Lcom/taplytics/jo;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Lcom/taplytics/jp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/taplytics/jo;->b()V

    .line 53
    return-void
.end method

.method private a(II)Lcom/taplytics/jp;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/taplytics/jp;

    const/16 v1, 0x28

    invoke-direct {v0, p1, p2, v1}, Lcom/taplytics/jp;-><init>(III)V

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taplytics/jo;->a:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/taplytics/jo;->a:Landroid/graphics/Paint;

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->d()Lcom/taplytics/b;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/jq;->a(Lcom/taplytics/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/taplytics/jo;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lcom/taplytics/jo;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taplytics/jo;->b:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/taplytics/jo;->b:Landroid/graphics/Paint;

    invoke-static {}, Lcom/taplytics/jq;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/taplytics/jo;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/taplytics/jo;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    .line 38
    invoke-virtual {p0}, Lcom/taplytics/jo;->invalidate()V

    .line 39
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    iget v0, v0, Lcom/taplytics/jp;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    iget v1, v1, Lcom/taplytics/jp;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    iget v2, v2, Lcom/taplytics/jp;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/taplytics/jo;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    iget v0, v0, Lcom/taplytics/jp;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    iget v1, v1, Lcom/taplytics/jp;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/taplytics/jo;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 128
    :goto_0
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/gq;->d()Lcom/taplytics/b;

    move-result-object v3

    sget-object v4, Lcom/taplytics/b;->alpaca:Lcom/taplytics/b;

    invoke-virtual {v3, v4}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/gq;->d()Lcom/taplytics/b;

    move-result-object v3

    sget-object v4, Lcom/taplytics/b;->antelope:Lcom/taplytics/b;

    invoke-virtual {v3, v4}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    return v2

    .line 86
    :pswitch_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->d()Lcom/taplytics/b;

    move-result-object v0

    sget-object v3, Lcom/taplytics/b;->alpaca:Lcom/taplytics/b;

    invoke-virtual {v0, v3}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->d()Lcom/taplytics/b;

    move-result-object v0

    sget-object v3, Lcom/taplytics/b;->antelope:Lcom/taplytics/b;

    invoke-virtual {v0, v3}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 89
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 91
    iget-object v4, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    if-nez v4, :cond_4

    .line 92
    invoke-direct {p0, v0, v3}, Lcom/taplytics/jo;->a(II)Lcom/taplytics/jp;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/jo;->c:Lcom/taplytics/jp;

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/taplytics/jo;->invalidate()V

    move v0, v1

    .line 98
    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {p0}, Lcom/taplytics/jo;->invalidate()V

    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :pswitch_3
    invoke-virtual {p0}, Lcom/taplytics/jo;->invalidate()V

    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :pswitch_4
    invoke-virtual {p0}, Lcom/taplytics/jo;->invalidate()V

    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :pswitch_5
    invoke-virtual {p0}, Lcom/taplytics/jo;->invalidate()V

    move v0, v1

    .line 118
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 122
    goto :goto_0

    .line 128
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
