.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 431
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V

    .line 434
    :cond_0
    return-void
.end method
