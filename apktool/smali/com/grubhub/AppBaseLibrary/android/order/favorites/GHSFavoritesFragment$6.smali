.class Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;->getFavoriteRestaurants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 260
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteDataModel;

    .line 263
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V

    .line 270
    :goto_1
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 255
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;)V

    return-void
.end method
