.class Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/models/PaymentMethod;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/models/PaymentMethod;

.field final synthetic b:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;->b:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iput-object p2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;->a:Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;->b:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    new-instance v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1$1;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1$1;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method
