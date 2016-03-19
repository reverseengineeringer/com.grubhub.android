.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 352
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)Z

    .line 354
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 348
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;->a(Ljava/util/ArrayList;)V

    return-void
.end method
