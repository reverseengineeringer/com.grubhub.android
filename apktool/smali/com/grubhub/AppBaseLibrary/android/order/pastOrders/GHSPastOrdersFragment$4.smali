.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(ZZ)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;->a:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    goto :goto_0
.end method
