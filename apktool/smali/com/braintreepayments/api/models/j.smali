.class public Lcom/braintreepayments/api/models/j;
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
        "Lcom/braintreepayments/api/models/PayPalAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorizationCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlationId"
    .end annotation
.end field

.field private d:Lcom/braintreepayments/api/models/m;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "options"
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/models/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/braintreepayments/api/models/PayPalAccount;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PayPalAccount;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/braintreepayments/api/models/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->b(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/braintreepayments/api/models/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->c(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/braintreepayments/api/models/j;->d:Lcom/braintreepayments/api/models/m;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->a(Lcom/braintreepayments/api/models/m;)V

    .line 83
    iget-object v1, p0, Lcom/braintreepayments/api/models/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->f(Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/braintreepayments/api/models/j;->a:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/braintreepayments/api/models/j;->b:Ljava/lang/String;

    .line 43
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
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v1, "paypalAccount"

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/j;->a()Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "_meta"

    new-instance v2, Lcom/braintreepayments/api/models/i;

    iget-object v3, p0, Lcom/braintreepayments/api/models/j;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/braintreepayments/api/models/j;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/braintreepayments/api/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/braintreepayments/api/models/j;->c:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/j;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/braintreepayments/api/models/j;->f:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "paypal_accounts"

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 2

    .prologue
    .line 103
    invoke-static {p1}, Lcom/braintreepayments/api/models/PayPalAccount;->d(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/braintreepayments/api/models/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->a(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "paypalAccounts"

    return-object v0
.end method

.method public synthetic h(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/j;->e(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v0

    return-object v0
.end method
