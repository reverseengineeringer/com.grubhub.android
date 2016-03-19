.class public Lcom/braintreepayments/cardform/view/b;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/b;->d()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/b;->d()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/b;->d()V

    .line 44
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    .line 48
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->a(F)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->b:I

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->a(F)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->c:I

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->a(F)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->d:I

    .line 51
    iput-boolean v5, p0, Lcom/braintreepayments/cardform/view/b;->e:Z

    .line 53
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/cardform/e;->bt_light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->g:I

    .line 54
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/cardform/e;->bt_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->h:I

    .line 56
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    invoke-virtual {v1, v2, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->f:I

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v6, [I

    const v2, 0x1010351

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    :goto_1
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "colorAccent"

    const-string v3, "attr"

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->f:I

    .line 64
    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->f:I

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/cardform/e;->bt_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/b;->f:I

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/braintreepayments/cardform/e;->bt_black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->setTextColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected a(F)I
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 100
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getImeActionId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->focusSearch(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_1
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->setError(Z)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->setError(Z)V

    goto :goto_0
.end method

.method protected getErrorColor()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->h:I

    return v0
.end method

.method protected getFocusedColor()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->f:I

    return v0
.end method

.method protected getInactiveColor()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->g:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const v5, 0xffffff

    const/4 v1, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getRight()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/braintreepayments/cardform/view/b;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/braintreepayments/cardform/view/b;->c:I

    sub-int v4, v2, v3

    .line 162
    iget-boolean v2, p0, Lcom/braintreepayments/cardform/view/b;->e:Z

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/braintreepayments/cardform/view/b;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    int-to-float v2, v4

    int-to-float v3, v0

    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->c:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/braintreepayments/cardform/view/b;->g:I

    and-int/2addr v3, v5

    const/high16 v5, 0x44000000    # 512.0f

    or-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    int-to-float v2, v4

    int-to-float v3, v0

    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/braintreepayments/cardform/view/b;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    int-to-float v2, v4

    int-to-float v3, v0

    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->c:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/braintreepayments/cardform/view/b;->g:I

    and-int/2addr v3, v5

    const/high16 v5, 0x1e000000

    or-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    int-to-float v2, v4

    int-to-float v3, v0

    iget v0, p0, Lcom/braintreepayments/cardform/view/b;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 90
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->setError(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/b;->setError(Z)V

    .line 85
    return-void
.end method

.method public setError(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/braintreepayments/cardform/view/b;->e:Z

    .line 132
    return-void
.end method
