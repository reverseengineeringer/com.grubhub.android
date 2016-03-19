.class public Lcom/braintreepayments/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/braintreepayments/api/models/h;

.field private b:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private c:Lcom/google/android/gms/wallet/Cart;


# direct methods
.method protected constructor <init>(Lcom/braintreepayments/api/models/h;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    .line 31
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/j;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/common/api/c;

    new-instance v2, Lcom/google/android/gms/wallet/i;

    invoke-direct {v2}, Lcom/google/android/gms/wallet/i;-><init>()V

    invoke-direct {p0}, Lcom/braintreepayments/api/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/i;->a(I)Lcom/google/android/gms/wallet/i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/i;->b(I)Lcom/google/android/gms/wallet/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/wallet/i;->a()Lcom/google/android/gms/wallet/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Lcom/braintreepayments/api/exceptions/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleApiClient failed to connect with error code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/braintreepayments/api/exceptions/j;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 46
    const-string v0, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 58
    const-string v0, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->f()Lcom/braintreepayments/api/models/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/e;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->f()Lcom/braintreepayments/api/models/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->f()Lcom/braintreepayments/api/models/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/e;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->f()Lcom/braintreepayments/api/models/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/gms/wallet/FullWalletRequest;->a()Lcom/google/android/gms/wallet/b;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/a;->c:Lcom/google/android/gms/wallet/Cart;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/b;->a(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/b;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/b;->a()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v0

    return-object v0
.end method

.method protected a(ZZZ)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->a()Lcom/google/android/gms/wallet/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/braintreepayments/api/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->c(Ljava/lang/String;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    const-string v1, "USD"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->b(Ljava/lang/String;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/a;->c:Lcom/google/android/gms/wallet/Cart;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->a(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/d;->e(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wallet/d;->b(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/wallet/d;->a(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/api/a;->a()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->a(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/braintreepayments/api/a;->c:Lcom/google/android/gms/wallet/Cart;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/braintreepayments/api/a;->c:Lcom/google/android/gms/wallet/Cart;

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/Cart;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/d;

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/d;->a()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->a()Lcom/google/android/gms/wallet/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/e;->a(I)Lcom/google/android/gms/wallet/e;

    move-result-object v0

    const-string v1, "gateway"

    const-string v2, "braintree"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/e;

    move-result-object v0

    const-string v1, "braintree:merchantId"

    iget-object v2, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/e;

    move-result-object v0

    const-string v1, "braintree:authorizationFingerprint"

    iget-object v2, p0, Lcom/braintreepayments/api/a;->a:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/h;->f()Lcom/braintreepayments/api/models/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/e;

    move-result-object v0

    const-string v1, "braintree:apiVersion"

    const-string v2, "v1"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/e;

    move-result-object v0

    const-string v1, "braintree:sdkVersion"

    const-string v2, "1.6.5"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/e;->a()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/j;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/a;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/braintreepayments/api/a;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    .line 80
    return-void
.end method

.method protected a(Landroid/content/Context;IZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/j;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p3, p4, p5}, Lcom/braintreepayments/api/a;->a(ZZZ)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/a;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    .line 68
    return-void
.end method

.method protected a(Lcom/google/android/gms/wallet/Cart;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/braintreepayments/api/a;->c:Lcom/google/android/gms/wallet/Cart;

    .line 35
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/braintreepayments/api/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 123
    :cond_0
    return-void
.end method
