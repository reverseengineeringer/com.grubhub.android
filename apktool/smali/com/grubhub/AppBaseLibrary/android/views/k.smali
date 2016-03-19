.class public abstract Lcom/grubhub/AppBaseLibrary/android/views/k;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Z

.field private b:Lcom/grubhub/AppBaseLibrary/android/views/l;

.field private c:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/k;)Lcom/grubhub/AppBaseLibrary/android/views/l;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->b:Lcom/grubhub/AppBaseLibrary/android/views/l;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const v0, 0x7f0f0321

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->c:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 49
    const v0, 0x7f0f0320

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/k$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/k$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0f031f

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/k$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/k$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method protected a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 110
    if-eqz p1, :cond_0

    .line 111
    if-eqz p2, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 124
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->a:Z

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 136
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->a:Z

    .line 138
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a()V

    .line 140
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->a:Z

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 148
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->a:Z

    .line 150
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->a:Z

    return v0
.end method

.method public setListener(Lcom/grubhub/AppBaseLibrary/android/views/l;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->b:Lcom/grubhub/AppBaseLibrary/android/views/l;

    .line 168
    return-void
.end method

.method public setPopupMsg(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k;->c:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method
