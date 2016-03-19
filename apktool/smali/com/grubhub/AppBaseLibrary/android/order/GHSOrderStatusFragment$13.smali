.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field final synthetic b:I

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;I)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
    .locals 4

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 404
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;->getOrderEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 407
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/order/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;I)V

    .line 411
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 399
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V

    return-void
.end method
