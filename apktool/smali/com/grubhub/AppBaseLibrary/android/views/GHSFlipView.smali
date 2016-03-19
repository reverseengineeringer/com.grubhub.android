.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Z

.field private d:I

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    .line 53
    const v0, 0x7f0f0111

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    .line 55
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/g;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView$1;)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c:Z

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c:Z

    if-eqz v0, :cond_2

    .line 100
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    goto :goto_0

    .line 108
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c:Z

    if-eqz v0, :cond_2

    .line 130
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 135
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c:Z

    if-eqz v0, :cond_2

    .line 115
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    goto :goto_0

    .line 123
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c:Z

    if-eqz v0, :cond_2

    .line 145
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->d:I

    goto :goto_0

    .line 153
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFrontVisible(Z)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 70
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 71
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 74
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 79
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 80
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 83
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c:Z

    if-eqz v0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->e:Landroid/view/View$OnClickListener;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
