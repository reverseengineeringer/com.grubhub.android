.class Lcom/paypal/android/sdk/payments/ci;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/ci;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/ci;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/sdk/cj;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is mock or sandbox:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning isValid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/r;

    invoke-direct {v0}, Lcom/paypal/android/sdk/r;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->u()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/paypal/android/sdk/r;->a(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method
