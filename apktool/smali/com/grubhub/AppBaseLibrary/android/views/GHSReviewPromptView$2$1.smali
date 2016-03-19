.class Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/views/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/views/w;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/w;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
