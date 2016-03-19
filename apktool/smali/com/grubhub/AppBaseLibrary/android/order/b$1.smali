.class Lcom/grubhub/AppBaseLibrary/android/order/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/b;->a(Landroid/widget/LinearLayout;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 700
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderNumber()Ljava/lang/String;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Lcom/grubhub/AppBaseLibrary/android/order/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Lcom/grubhub/AppBaseLibrary/android/order/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/e;->d(Ljava/lang/String;)V

    .line 707
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "order status tracking"

    const-string v3, "order status tracking_cta"

    const-string v4, "real-time order tracking"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 711
    return-void
.end method
