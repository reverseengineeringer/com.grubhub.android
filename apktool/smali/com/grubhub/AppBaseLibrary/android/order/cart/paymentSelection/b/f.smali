.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;
.super Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/e;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/e;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->S()Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
