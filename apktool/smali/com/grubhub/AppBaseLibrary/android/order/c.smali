.class Lcom/grubhub/AppBaseLibrary/android/order/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field public final b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/c;->c:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/c;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    .line 810
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/c;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

    .line 811
    return-void
.end method
