.class Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Z)V

    .line 450
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-direct {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    .line 451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getMerchantTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method
