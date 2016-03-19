.class Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method
