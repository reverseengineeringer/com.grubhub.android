.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 449
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 440
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/a;->a()V

    .line 445
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->k(Z)V

    .line 447
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$16;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
