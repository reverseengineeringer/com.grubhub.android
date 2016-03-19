.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->f(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V

    .line 634
    return-void
.end method
