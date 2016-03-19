.class Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Ljava/util/ArrayList;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ad()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 346
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b()V

    .line 348
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;

    invoke-direct {v6, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;->b:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 363
    :cond_1
    return-void
.end method
