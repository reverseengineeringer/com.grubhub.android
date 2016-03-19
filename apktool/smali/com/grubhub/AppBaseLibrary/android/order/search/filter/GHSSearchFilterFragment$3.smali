.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;->j()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;Z)Z

    .line 299
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;Z)Z

    .line 291
    return-void
.end method
