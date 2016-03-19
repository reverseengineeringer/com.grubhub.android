.class public abstract Lcom/paypal/android/sdk/dy;
.super Lcom/paypal/android/sdk/dz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/dy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/dy;-><init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/paypal/android/sdk/dz;-><init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p4}, Lcom/paypal/android/sdk/dy;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/dy;->f()Lcom/paypal/android/sdk/ef;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/dy;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
