.class Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1$1;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1$1;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;

    iget-object v0, v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;->b:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1$1;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;

    iget-object v1, v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;->a:Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 228
    return-void
.end method
