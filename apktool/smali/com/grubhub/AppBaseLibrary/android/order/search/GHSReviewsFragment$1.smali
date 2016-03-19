.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 85
    add-int/lit8 v1, p4, -0xf

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    .line 87
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRatingCount()I

    move-result v2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-le v2, v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    .line 88
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    .line 89
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    if-lez v1, :cond_0

    add-int v0, p2, p3

    if-le v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
