.class public abstract Lcom/facebook/f;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/support/v4/app/Fragment;


# direct methods
.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-static {p1}, Lcom/facebook/a/a;->a(Landroid/content/Context;)Lcom/facebook/a/a;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/facebook/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/facebook/f;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 164
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 166
    :cond_1
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/facebook/f;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/f;->e:I

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/f;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/f;->f:I

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/f;->g:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/f;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/f;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/f;->a(Landroid/content/Context;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/facebook/f;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    .line 118
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/facebook/f;->getCompoundPaddingLeft()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/facebook/f;->getCompoundPaddingRight()I

    move-result v3

    .line 128
    invoke-virtual {p0}, Lcom/facebook/f;->getCompoundDrawablePadding()I

    move-result v4

    .line 129
    add-int/2addr v4, v0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/f;->getWidth()I

    move-result v5

    sub-int v4, v5, v4

    sub-int/2addr v4, v3

    .line 131
    invoke-virtual {p0}, Lcom/facebook/f;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/f;->a(Ljava/lang/String;)I

    move-result v5

    .line 132
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 133
    invoke-virtual {p0}, Lcom/facebook/f;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 135
    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/f;->e:I

    .line 136
    add-int v0, v3, v4

    iput v0, p0, Lcom/facebook/f;->f:I

    .line 137
    iput-boolean v1, p0, Lcom/facebook/f;->d:Z

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    iput-boolean v2, p0, Lcom/facebook/f;->d:Z

    .line 141
    return-void

    :cond_1
    move v0, v2

    .line 117
    goto :goto_0
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/f;->g:Landroid/support/v4/app/Fragment;

    .line 83
    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/facebook/f;->c:Landroid/view/View$OnClickListener;

    .line 197
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/f;->b:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method
