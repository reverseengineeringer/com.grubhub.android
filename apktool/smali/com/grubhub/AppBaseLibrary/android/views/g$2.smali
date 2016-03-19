.class Lcom/grubhub/AppBaseLibrary/android/views/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/g;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/g;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/g;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/g$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/g;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/views/g;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
