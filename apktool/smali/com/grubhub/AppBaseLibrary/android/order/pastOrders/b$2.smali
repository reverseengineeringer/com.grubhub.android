.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V

    .line 299
    :cond_0
    return-void
.end method
