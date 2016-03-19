.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 320
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 321
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->removeFooterView(Landroid/view/View;)Z

    .line 323
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;->getReviews()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;->getReviewList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    .line 324
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/j;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    const v4, 0x7f0300b9

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v5, v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Z)Z

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;I)I

    .line 338
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Z)Z

    .line 339
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/j;

    .line 331
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v4, v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Z)Z

    .line 332
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->a(Ljava/util/List;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    const v1, 0x7f0804ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V

    return-void
.end method
