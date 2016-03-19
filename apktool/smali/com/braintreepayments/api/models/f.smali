.class public Lcom/braintreepayments/api/models/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/models/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braintreepayments/api/models/l",
        "<",
        "Lcom/braintreepayments/api/models/Card;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/braintreepayments/api/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creditCard"
    .end annotation
.end field

.field private b:Lcom/braintreepayments/api/models/Card$BillingAddress;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/models/f;->b:Lcom/braintreepayments/api/models/Card$BillingAddress;

    .line 19
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/models/f;->c:Ljava/lang/String;

    .line 20
    const-string v0, "form"

    iput-object v0, p0, Lcom/braintreepayments/api/models/f;->d:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/braintreepayments/api/models/Card;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/Card;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    .line 24
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    iget-object v1, p0, Lcom/braintreepayments/api/models/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/Card;->f(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private f()Lcom/braintreepayments/api/models/Card$BillingAddress;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->b:Lcom/braintreepayments/api/models/Card$BillingAddress;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/braintreepayments/api/models/Card$BillingAddress;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/Card$BillingAddress;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/models/f;->b:Lcom/braintreepayments/api/models/Card$BillingAddress;

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    iget-object v1, p0, Lcom/braintreepayments/api/models/f;->b:Lcom/braintreepayments/api/models/Card$BillingAddress;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/Card;->a(Lcom/braintreepayments/api/models/Card$BillingAddress;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->b:Lcom/braintreepayments/api/models/Card$BillingAddress;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/braintreepayments/api/models/Card;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->c(Ljava/lang/String;)V

    .line 33
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->d(Ljava/lang/String;)V

    .line 42
    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string v1, "creditCard"

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/f;->a()Lcom/braintreepayments/api/models/Card;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "_meta"

    new-instance v2, Lcom/braintreepayments/api/models/i;

    iget-object v3, p0, Lcom/braintreepayments/api/models/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/braintreepayments/api/models/f;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/braintreepayments/api/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->a(Ljava/lang/String;)V

    .line 51
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/f;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/braintreepayments/api/models/f;->a:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->b(Ljava/lang/String;)V

    .line 60
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "credit_cards"

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/braintreepayments/api/models/f;->f()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->a(Ljava/lang/String;)V

    .line 123
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "creditCards"

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/braintreepayments/api/models/f;->c:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;
    .locals 1

    .prologue
    .line 185
    invoke-static {p1}, Lcom/braintreepayments/api/models/Card;->e(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/f;->g(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method
