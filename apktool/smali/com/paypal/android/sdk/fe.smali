.class public final Lcom/paypal/android/sdk/fe;
.super Lcom/paypal/android/sdk/fm;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/cl;->f:Lcom/paypal/android/sdk/cl;

    invoke-static {p3, p4}, Lcom/paypal/android/sdk/fe;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/paypal/android/sdk/fm;-><init>(Lcom/paypal/android/sdk/cl;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/paypal/android/sdk/fe;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/paypal/android/sdk/fe;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/paypal/android/sdk/fe;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    iget-object v2, p0, Lcom/paypal/android/sdk/fe;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonce"

    iget-object v2, p0, Lcom/paypal/android/sdk/fe;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scope"

    const-string v2, " "

    iget-object v3, p0, Lcom/paypal/android/sdk/fe;->b:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/paypal/android/sdk/ft;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fe;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fe;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "{\"code\":\"EOTHbvqh0vwM2ldM2QIXbjVw0hZNuZEJLqdWmfTBLLSvGfqgyy9GKvjGybIxyGMd7gHXCXVtymqFQHS-J-4-Ir6u2LUVVdyLKonwTtdFw9qhBaMb4NZuZHKS0bGxdZlRAB3_Fk8HX2r3z8j03xScx4M\",\"scope\":\"https://uri.paypal.com/services/payments/futurepayments\"}"

    return-object v0
.end method
