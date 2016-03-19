.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;ZZ)V

    .line 439
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 435
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V

    return-void
.end method
