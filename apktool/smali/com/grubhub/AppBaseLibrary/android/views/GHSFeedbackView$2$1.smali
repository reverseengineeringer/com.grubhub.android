.class Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)Lcom/grubhub/AppBaseLibrary/android/views/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)Lcom/grubhub/AppBaseLibrary/android/views/f;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/f;->d(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
