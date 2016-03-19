.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;->a(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;)V
    .locals 0

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1534
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->p(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 1539
    return-void
.end method
