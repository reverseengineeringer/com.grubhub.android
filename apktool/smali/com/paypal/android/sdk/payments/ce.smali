.class final Lcom/paypal/android/sdk/payments/ce;
.super Lcom/paypal/android/sdk/payments/cc;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/payments/ar;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/payments/ar;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/cc;-><init>(Lcom/paypal/android/sdk/payments/ar;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/ce;->a()Lcom/paypal/android/sdk/payments/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ar;->a()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/cm;->a:Lcom/paypal/android/sdk/bQ;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bQ;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/ce;->a()Lcom/paypal/android/sdk/payments/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ar;->a()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/bQ;

    invoke-direct {v1}, Lcom/paypal/android/sdk/bQ;-><init>()V

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->a:Lcom/paypal/android/sdk/bQ;

    const-string v0, "v49"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v51"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/ce;->a()Lcom/paypal/android/sdk/payments/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ar;->c()Lcom/paypal/android/sdk/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ad;->d()Lcom/paypal/android/sdk/ck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ck;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v52"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/eh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/paypal/android/sdk/eh;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v53"

    sget-object v1, Lcom/paypal/android/sdk/eh;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/paypal/android/sdk/ag;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/ce;->a()Lcom/paypal/android/sdk/payments/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ar;->a()Lcom/paypal/android/sdk/cm;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/cm;->a:Lcom/paypal/android/sdk/bQ;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bQ;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/paypal/android/sdk/eh;->c:Ljava/lang/String;

    sget-object v4, Lcom/paypal/android/sdk/eh;->b:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/ag;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/ce;->a()Lcom/paypal/android/sdk/payments/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/ar;->a(Lcom/paypal/android/sdk/ag;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "mpl"

    return-object v0
.end method
