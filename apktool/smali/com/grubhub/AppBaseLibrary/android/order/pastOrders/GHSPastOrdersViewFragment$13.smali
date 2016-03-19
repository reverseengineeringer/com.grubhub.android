.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$13;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->e(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->PAST_ORDER_DESTINATION_ADD_TO_BAG:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;)V

    .line 380
    return-void
.end method
