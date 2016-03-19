.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 259
    return-void
.end method
