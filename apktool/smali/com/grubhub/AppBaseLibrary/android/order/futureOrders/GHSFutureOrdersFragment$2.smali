.class Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(ZLcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;Z)Z

    .line 388
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;->getUserCarts()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;->getUserCarts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;Ljava/util/List;)Ljava/util/List;

    .line 390
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)V

    .line 417
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;->a()V

    .line 420
    :cond_1
    return-void

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;->getUserCarts()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;Ljava/util/List;)Ljava/util/List;

    .line 396
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 383
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$2;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;)V

    return-void
.end method
