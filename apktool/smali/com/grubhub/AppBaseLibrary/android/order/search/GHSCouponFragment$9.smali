.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 408
    return-void
.end method
