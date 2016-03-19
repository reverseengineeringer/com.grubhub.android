.class Lcom/paypal/android/sdk/payments/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/sdk/payments/an;

.field private c:Ljava/lang/Object;

.field private d:Lcom/paypal/android/sdk/payments/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/af;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/paypal/android/sdk/payments/ak;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/paypal/android/sdk/payments/ak;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/paypal/android/sdk/ff;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/paypal/android/sdk/fj;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "success"

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/af;->b(Lcom/paypal/android/sdk/payments/ak;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/ak;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/af;->b(Lcom/paypal/android/sdk/payments/ak;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->b:Lcom/paypal/android/sdk/payments/an;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->b:Lcom/paypal/android/sdk/payments/an;

    invoke-interface {p1, v0}, Lcom/paypal/android/sdk/payments/ak;->a(Lcom/paypal/android/sdk/payments/an;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/af;->b:Lcom/paypal/android/sdk/payments/an;

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    goto :goto_0
.end method

.method final a(Lcom/paypal/android/sdk/payments/an;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/payments/ak;->a(Lcom/paypal/android/sdk/payments/an;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/af;->b:Lcom/paypal/android/sdk/payments/an;

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/af;->c:Ljava/lang/Object;

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/af;->d:Lcom/paypal/android/sdk/payments/ak;

    return-void
.end method
