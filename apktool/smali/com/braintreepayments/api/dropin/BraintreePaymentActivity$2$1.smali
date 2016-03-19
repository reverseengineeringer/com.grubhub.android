.class Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    iget-object v0, v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-static {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    iget-object v0, v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a()V

    .line 302
    return-void
.end method
