.class Lcom/paypal/android/sdk/payments/bw;
.super Lcom/paypal/android/sdk/payments/d;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/payments/d;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    iput-boolean p3, p0, Lcom/paypal/android/sdk/payments/bw;->a:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/ft;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v0, "merchantName"

    invoke-virtual {p0, v5, v0}, Lcom/paypal/android/sdk/payments/bw;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "merchantPrivacyPolicyUrl"

    invoke-static {v0, v1, v4}, Lcom/paypal/android/sdk/ft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/bw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    const-string v0, "merchantPrivacyPolicyUrl"

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/sdk/payments/bw;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "merchantUserAgreementUrl"

    invoke-static {v0, v4, v6}, Lcom/paypal/android/sdk/ft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->c()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/bw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v2

    :goto_1
    const-string v0, "merchantUserAgreementUrl"

    invoke-virtual {p0, v4, v0}, Lcom/paypal/android/sdk/payments/bw;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/bw;->a:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    iget-boolean v6, p0, Lcom/paypal/android/sdk/payments/bw;->a:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/bw;->b()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "com.paypal.android.sdk.requested_scopes"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    if-nez v0, :cond_4

    move v0, v3

    :cond_0
    :goto_3
    const-string v6, "paypalScopes"

    invoke-virtual {p0, v0, v6}, Lcom/paypal/android/sdk/payments/bw;->a(ZLjava/lang/String;)V

    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    :goto_4
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_6

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v7, Lcom/paypal/android/sdk/o;->q:Ljava/util/Collection;

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_4
.end method
