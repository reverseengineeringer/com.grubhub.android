.class final Lcom/paypal/android/sdk/payments/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ak;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/LoginActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/p;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/an;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/p;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/an;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/LoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/p;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    sget-object v1, Lcom/paypal/android/sdk/payments/aj;->j:Lcom/paypal/android/sdk/payments/aj;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/payments/aj;)V

    return-void
.end method
