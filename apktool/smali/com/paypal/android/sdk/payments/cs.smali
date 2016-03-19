.class final Lcom/paypal/android/sdk/payments/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/ck;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cs;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/ck;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cs;->a:Lcom/paypal/android/sdk/payments/ck;

    check-cast p2, Lcom/paypal/android/sdk/payments/al;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/al;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cs;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/ct;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/ct;-><init>(Lcom/paypal/android/sdk/payments/cs;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cs;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ck;->d(Lcom/paypal/android/sdk/payments/ck;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cs;->a:Lcom/paypal/android/sdk/payments/ck;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    return-void
.end method
