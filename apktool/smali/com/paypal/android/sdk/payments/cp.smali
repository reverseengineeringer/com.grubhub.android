.class final Lcom/paypal/android/sdk/payments/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/am;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ck;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cp;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/ck;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cp;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->p()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/payments/an;)V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cp;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ck;->a(Lcom/paypal/android/sdk/payments/ck;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cp;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/an;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/ek;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
