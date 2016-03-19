.class Lcom/grubhub/AppBaseLibrary/android/order/b$2;
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

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$2;->c:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$2;->c:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V

    .line 746
    return-void
.end method
