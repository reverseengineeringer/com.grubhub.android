.class final Lcom/paypal/android/sdk/dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/dz;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/paypal/android/sdk/dp;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dq;->c:Lcom/paypal/android/sdk/dp;

    iput-object p2, p0, Lcom/paypal/android/sdk/dq;->a:Lcom/paypal/android/sdk/dz;

    iput-object p3, p0, Lcom/paypal/android/sdk/dq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/dq;->c:Lcom/paypal/android/sdk/dp;

    iget-object v1, p0, Lcom/paypal/android/sdk/dq;->a:Lcom/paypal/android/sdk/dz;

    iget-object v2, p0, Lcom/paypal/android/sdk/dq;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/dq;->c:Lcom/paypal/android/sdk/dp;

    invoke-static {v3}, Lcom/paypal/android/sdk/dp;->e(Lcom/paypal/android/sdk/dp;)Lcom/paypal/android/sdk/as;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/du;

    iget-object v5, p0, Lcom/paypal/android/sdk/dq;->c:Lcom/paypal/android/sdk/dp;

    iget-object v6, p0, Lcom/paypal/android/sdk/dq;->a:Lcom/paypal/android/sdk/dz;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/paypal/android/sdk/du;-><init>(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;B)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;Ljava/lang/String;Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/ax;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
