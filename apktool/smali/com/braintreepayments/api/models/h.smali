.class public Lcom/braintreepayments/api/models/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientApiUrl"
    .end annotation
.end field

.field private b:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "challenges"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paypalEnabled"
    .end annotation
.end field

.field private d:Lcom/braintreepayments/api/models/k;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paypal"
    .end annotation
.end field

.field private e:Lcom/braintreepayments/api/models/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "androidPay"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "venmo"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchantId"
    .end annotation
.end field

.field private h:Lcom/braintreepayments/api/models/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "analytics"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/braintreepayments/api/models/h;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/braintreepayments/api/models/h;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/h;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/braintreepayments/api/models/h;->b:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/braintreepayments/api/models/h;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/braintreepayments/api/models/h;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 130
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 136
    :cond_0
    return v0

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    const-string v0, "cvv"

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/models/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 53
    const-string v0, "postal_code"

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/models/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->d:Lcom/braintreepayments/api/models/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/braintreepayments/api/models/k;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->d:Lcom/braintreepayments/api/models/k;

    return-object v0
.end method

.method public f()Lcom/braintreepayments/api/models/e;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->e:Lcom/braintreepayments/api/models/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/braintreepayments/api/models/e;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/e;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->e:Lcom/braintreepayments/api/models/e;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "off"

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->h:Lcom/braintreepayments/api/models/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->h:Lcom/braintreepayments/api/models/a;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/braintreepayments/api/models/a;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/braintreepayments/api/models/h;->h:Lcom/braintreepayments/api/models/a;

    return-object v0
.end method
