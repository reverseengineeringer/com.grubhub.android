.class public abstract Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;

.field private b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;

    .line 31
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;

    .line 32
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;

    invoke-interface {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b()V

    .line 74
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public abstract a()Z
.end method

.method public b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;

    invoke-interface {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a/a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;->a()V

    .line 62
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 94
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "payment selection"

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 97
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->toLoggingString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 98
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->toLoggingString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 100
    return-void
.end method

.method public c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    return-object v0
.end method
