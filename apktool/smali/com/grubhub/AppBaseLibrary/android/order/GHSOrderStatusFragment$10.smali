.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    .line 310
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->a:Z

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V

    .line 314
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)Z

    .line 315
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V

    return-void
.end method
