.class public Lcom/braintreepayments/cardform/view/c;
.super Lcom/braintreepayments/cardform/view/b;
.source "SourceFile"


# instance fields
.field protected a:Z

.field private b:Landroid/text/TextPaint;

.field private c:Landroid/animation/ValueAnimator;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator;

.field private g:F

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/b;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    .line 33
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/braintreepayments/cardform/view/c;->g:F

    .line 43
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/c;->d()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    .line 33
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/braintreepayments/cardform/view/c;->g:F

    .line 48
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/c;->d()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    .line 33
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/braintreepayments/cardform/view/c;->g:F

    .line 53
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/c;->d()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/braintreepayments/cardform/view/c;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/braintreepayments/cardform/view/c;->g:F

    return p1
.end method

.method static synthetic a(Lcom/braintreepayments/cardform/view/c;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/braintreepayments/cardform/view/c;->h:I

    return p1
.end method

.method static synthetic b(Lcom/braintreepayments/cardform/view/c;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/braintreepayments/cardform/view/c;->i:I

    return p1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/c;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/c;->a:Z

    .line 58
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/c;->j:I

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/c;->e()V

    .line 62
    :cond_0
    return-void
.end method

.method private e()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 66
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getTextSize()F

    move-result v0

    .line 67
    new-array v1, v3, [F

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v0

    aput v2, v1, v4

    aput v0, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/c;->c:Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/braintreepayments/cardform/view/c$1;

    invoke-direct {v1, p0}, Lcom/braintreepayments/cardform/view/c$1;-><init>(Lcom/braintreepayments/cardform/view/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    new-instance v0, Lcom/braintreepayments/cardform/view/c$2;

    invoke-direct {v0, p0}, Lcom/braintreepayments/cardform/view/c$2;-><init>(Lcom/braintreepayments/cardform/view/c;)V

    .line 85
    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getInactiveColor()I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getFocusedColor()I

    move-result v2

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/braintreepayments/cardform/view/c;->d:Landroid/animation/ValueAnimator;

    .line 86
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c;->d:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 87
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getFocusedColor()I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getInactiveColor()I

    move-result v2

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/braintreepayments/cardform/view/c;->e:Landroid/animation/ValueAnimator;

    .line 91
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c;->e:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 92
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/c;->f:Landroid/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/braintreepayments/cardform/view/c$3;

    invoke-direct {v1, p0}, Lcom/braintreepayments/cardform/view/c$3;-><init>(Lcom/braintreepayments/cardform/view/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    return-void

    .line 95
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private f()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/braintreepayments/cardform/view/b;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/braintreepayments/cardform/view/c;->h:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 120
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/braintreepayments/cardform/view/c;->i:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 122
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/c;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/braintreepayments/cardform/view/c;->g:F

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/c;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/b;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/braintreepayments/cardform/view/c;->a(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Lcom/braintreepayments/cardform/view/b;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lcom/braintreepayments/cardform/view/c;->j:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 133
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/c;->j:I

    .line 138
    return-void
.end method
