.class final Lcom/paypal/android/sdk/payments/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ag;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Lcom/paypal/android/sdk/ck;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ag;->a:Landroid/content/Context;

    new-instance v2, Lcom/paypal/android/sdk/payments/cg;

    invoke-direct {v2}, Lcom/paypal/android/sdk/payments/cg;-><init>()V

    const-string v2, "AndroidBasePrefs"

    invoke-direct {v1, v0, v2}, Lcom/paypal/android/sdk/ck;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/db;->a(Lcom/paypal/android/sdk/ck;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ck;)V

    new-instance v0, Lcom/paypal/android/sdk/payments/ah;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ah;-><init>(Lcom/paypal/android/sdk/payments/ag;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/paypal/android/sdk/co;

    invoke-direct {v3, v1, v0}, Lcom/paypal/android/sdk/co;-><init>(Lcom/paypal/android/sdk/ck;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/paypal/android/sdk/co;->a()V

    invoke-virtual {v3}, Lcom/paypal/android/sdk/co;->b()V

    invoke-static {v0}, Lcom/paypal/android/sdk/cn;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.clearAllUserData"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ag;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/e;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/e;->a(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    return-void
.end method
