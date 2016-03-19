.class public Lcom/braintreepayments/api/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/braintreepayments/api/models/g;

.field private c:Lcom/braintreepayments/api/models/h;

.field private d:Lcom/braintreepayments/api/b/b;

.field private e:Lcom/braintreepayments/api/m;

.field private f:Lcom/braintreepayments/api/a;

.field private g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/models/g;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/braintreepayments/api/k;->b:Lcom/braintreepayments/api/models/g;

    .line 94
    new-instance v0, Lcom/braintreepayments/api/b/b;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->b:Lcom/braintreepayments/api/models/g;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/b/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/models/g;Lcom/braintreepayments/api/models/h;Lcom/braintreepayments/api/b/b;)V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/braintreepayments/api/k;->b:Lcom/braintreepayments/api/models/g;

    .line 107
    iput-object p3, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    .line 108
    iput-object p4, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/k;->g:Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/braintreepayments/api/m;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/m;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/h;)V

    iput-object v0, p0, Lcom/braintreepayments/api/k;->e:Lcom/braintreepayments/api/m;

    .line 112
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 98
    invoke-static {p2}, Lcom/braintreepayments/api/models/g;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/g;

    move-result-object v0

    invoke-static {p3}, Lcom/braintreepayments/api/models/h;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/h;

    move-result-object v1

    new-instance v2, Lcom/braintreepayments/api/b/b;

    invoke-static {p2}, Lcom/braintreepayments/api/models/g;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/b/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/braintreepayments/api/k;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/g;Lcom/braintreepayments/api/models/h;Lcom/braintreepayments/api/b/b;)V

    .line 101
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/i;
        }
    .end annotation

    .prologue
    .line 552
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    new-instance v0, Lcom/braintreepayments/api/exceptions/i;

    const-string v1, "Parsing server response failed"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()Lcom/braintreepayments/api/models/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/braintreepayments/api/k;->b:Lcom/braintreepayments/api/models/g;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "configVersion"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/b/b;->b(Ljava/lang/String;)Lcom/braintreepayments/api/b/c;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/braintreepayments/api/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/braintreepayments/api/models/h;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/braintreepayments/api/models/AndroidPayCard;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {p1}, Lcom/braintreepayments/api/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/FullWallet;

    .line 369
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/FullWallet;->c()Lcom/google/android/gms/wallet/PaymentMethodToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/PaymentMethodToken;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "androidPayCards"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 372
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/braintreepayments/api/models/AndroidPayCard;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/AndroidPayCard;

    .line 376
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/braintreepayments/api/models/l;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/l",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payment_methods/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/braintreepayments/api/models/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/braintreepayments/api/models/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/braintreepayments/api/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/b/c;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/braintreepayments/api/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/braintreepayments/api/models/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/braintreepayments/api/models/l;->h(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 477
    iget-object v0, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payment_methods/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/b/b;->b(Ljava/lang/String;)Lcom/braintreepayments/api/b/c;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/braintreepayments/api/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/braintreepayments/api/models/PaymentMethod;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 482
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PaymentMethod;

    return-object v0

    .line 483
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 484
    new-instance v0, Lcom/braintreepayments/api/exceptions/i;

    const-string v1, "Expected one payment method, got multiple payment methods"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    new-instance v0, Lcom/braintreepayments/api/exceptions/i;

    const-string v1, "No payment methods were found for nonce"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/f;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/braintreepayments/api/l;->a(Landroid/content/Context;)V

    .line 299
    invoke-static {p1, p2, p3}, Lcom/braintreepayments/api/l;->a(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/j;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/braintreepayments/api/k;->e:Lcom/braintreepayments/api/m;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/m;->a(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/a;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/braintreepayments/api/k;->e:Lcom/braintreepayments/api/m;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/m;->a(Landroid/app/Activity;I)V

    .line 229
    return-void
.end method

.method protected a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/j;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/braintreepayments/api/a;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/a;-><init>(Lcom/braintreepayments/api/models/h;)V

    iput-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    .line 272
    :cond_0
    if-eqz p3, :cond_1

    .line 273
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    invoke-virtual {v0, p3}, Lcom/braintreepayments/api/a;->a(Lcom/google/android/gms/wallet/Cart;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    invoke-virtual {v0, p1, p2, p4}, Lcom/braintreepayments/api/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 277
    return-void
.end method

.method protected a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/h;,
            Lcom/braintreepayments/api/exceptions/j;
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 243
    new-instance v0, Lcom/braintreepayments/api/exceptions/h;

    const-string v1, "The cart must be null when isBillingAgreement is true"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    if-nez p4, :cond_1

    if-nez p3, :cond_1

    .line 245
    new-instance v0, Lcom/braintreepayments/api/exceptions/h;

    const-string v1, "Cart cannot be null unless isBillingAgreement is true"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Lcom/braintreepayments/api/a;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/a;-><init>(Lcom/braintreepayments/api/models/h;)V

    iput-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    invoke-virtual {v0, p3}, Lcom/braintreepayments/api/a;->a(Lcom/google/android/gms/wallet/Cart;)V

    .line 253
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/braintreepayments/api/a;->a(Landroid/content/Context;IZZZ)V

    .line 255
    return-void
.end method

.method public a(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/h;->e()Lcom/braintreepayments/api/models/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/braintreepayments/api/l;->a(Landroid/content/Context;Lcom/braintreepayments/api/models/k;)V

    .line 213
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->e()Lcom/braintreepayments/api/models/k;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/braintreepayments/api/l;->a(Landroid/app/Activity;ILcom/braintreepayments/api/models/k;Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Lcom/braintreepayments/api/models/b;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/braintreepayments/api/models/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    iget-object v2, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/h;->j()Lcom/braintreepayments/api/models/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/braintreepayments/api/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/b/c;
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/braintreepayments/api/k;->l()Lcom/braintreepayments/api/models/h;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    .line 120
    iget-object v0, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/b/b;->a(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/k;->g:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/braintreepayments/api/m;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/m;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/h;)V

    iput-object v0, p0, Lcom/braintreepayments/api/k;->e:Lcom/braintreepayments/api/m;

    .line 124
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/braintreepayments/api/k;->e:Lcom/braintreepayments/api/m;

    invoke-virtual {v0}, Lcom/braintreepayments/api/m;->a()Z

    move-result v0

    return v0
.end method

.method protected f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/h;->f()Lcom/braintreepayments/api/models/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 168
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public g()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->b()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/h;->c()Z

    move-result v0

    return v0
.end method

.method protected i()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/braintreepayments/api/a;

    iget-object v1, p0, Lcom/braintreepayments/api/k;->c:Lcom/braintreepayments/api/models/h;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/a;-><init>(Lcom/braintreepayments/api/models/h;)V

    iput-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    invoke-virtual {v0}, Lcom/braintreepayments/api/a;->a()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    return-object v0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/braintreepayments/api/k;->f:Lcom/braintreepayments/api/a;

    invoke-virtual {v0}, Lcom/braintreepayments/api/a;->b()V

    .line 283
    :cond_0
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/braintreepayments/api/k;->d:Lcom/braintreepayments/api/b/b;

    const-string v1, "payment_methods"

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/b/b;->b(Ljava/lang/String;)Lcom/braintreepayments/api/b/c;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/braintreepayments/api/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/braintreepayments/api/models/PaymentMethod;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
