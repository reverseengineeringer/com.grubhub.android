.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    goto :goto_0
.end method
