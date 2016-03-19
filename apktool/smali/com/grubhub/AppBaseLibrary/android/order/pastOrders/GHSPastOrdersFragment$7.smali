.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(ZZ)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

.field final synthetic c:Z

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;Z)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->a:Z

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    iput-boolean p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 279
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_3

    .line 281
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 282
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_0

    .line 284
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->M()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 290
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    .line 293
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 294
    :cond_1
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

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7$1;

    invoke-direct {v6, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 306
    :cond_2
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->c:Z

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;->d:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)Z

    .line 314
    return-void
.end method
