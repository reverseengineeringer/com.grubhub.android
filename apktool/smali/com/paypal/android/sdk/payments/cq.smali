.class final Lcom/paypal/android/sdk/payments/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ak;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ck;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/an;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/ck;->dismissDialog(I)V

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/an;->b:Ljava/lang/String;

    const-string v1, "invalid_nonce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ck;->c:Lcom/paypal/android/sdk/en;

    iget-object v0, v0, Lcom/paypal/android/sdk/en;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    sget-object v1, Lcom/paypal/android/sdk/em;->aL:Lcom/paypal/android/sdk/em;

    invoke-static {v1}, Lcom/paypal/android/sdk/ek;->a(Lcom/paypal/android/sdk/em;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ck;->c:Lcom/paypal/android/sdk/en;

    iget-object v0, v0, Lcom/paypal/android/sdk/en;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/an;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/ek;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/paypal/android/sdk/fj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    check-cast p1, Lcom/paypal/android/sdk/fj;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/ck;->a(Lcom/paypal/android/sdk/payments/ck;Lcom/paypal/android/sdk/fj;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cq;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ck;->b(Lcom/paypal/android/sdk/payments/ck;)V

    goto :goto_0
.end method
