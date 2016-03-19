.class Lcom/grubhub/AppBaseLibrary/android/views/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView$1;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/g;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 167
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 168
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/g$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/g$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/g;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 195
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 199
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 200
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/g$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/g$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/g;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 225
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 227
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
