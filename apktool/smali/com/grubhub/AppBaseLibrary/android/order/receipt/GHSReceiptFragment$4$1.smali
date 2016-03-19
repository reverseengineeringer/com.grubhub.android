.class Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;)V
    .locals 2

    .prologue
    .line 469
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 470
    const-string v0, "OrderId"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method
