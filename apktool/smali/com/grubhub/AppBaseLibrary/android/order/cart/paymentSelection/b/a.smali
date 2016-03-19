.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;
.super Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/b;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/b;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v1

    .line 22
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedMaskedWalletModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
