.class final Lcom/paypal/android/sdk/payments/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/s;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/s;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/s;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/s;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected exit - isFinishing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/s;

    check-cast p2, Lcom/paypal/android/sdk/payments/al;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/al;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/s;->a(Lcom/paypal/android/sdk/payments/s;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/s;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/s;->b(Lcom/paypal/android/sdk/payments/s;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/payments/bo;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bo;-><init>(Lcom/paypal/android/sdk/payments/bn;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/s;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/s;->c(Lcom/paypal/android/sdk/payments/s;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/s;->a(Lcom/paypal/android/sdk/payments/s;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {}, Lcom/paypal/android/sdk/payments/s;->a()Ljava/lang/String;

    return-void
.end method
