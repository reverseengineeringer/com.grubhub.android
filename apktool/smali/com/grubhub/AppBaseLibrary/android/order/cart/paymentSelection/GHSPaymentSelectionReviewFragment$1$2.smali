.class Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$2;
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

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 271
    :cond_0
    return-void
.end method
