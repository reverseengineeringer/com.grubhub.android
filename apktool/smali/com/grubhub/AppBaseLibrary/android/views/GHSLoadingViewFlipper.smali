.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    .line 36
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->c()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    .line 41
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->c()V

    .line 42
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a2

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const v0, 0x7f0f0311

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b:Landroid/view/ViewGroup;

    .line 52
    const v0, 0x7f0f0310

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->c:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0f0312

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->d:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0f0313

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->e:Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 59
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setDisplayedChild(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public a(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setDisplayedChild(I)V

    .line 72
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setDisplayedChild(I)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setDisplayedChild(I)V

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setDisplayedChild(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
