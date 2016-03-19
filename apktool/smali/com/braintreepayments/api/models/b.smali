.class public Lcom/braintreepayments/api/models/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lcom/braintreepayments/api/models/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "analytics"
    .end annotation
.end field

.field public b:Lcom/braintreepayments/api/models/d;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_meta"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/braintreepayments/api/models/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/braintreepayments/api/models/c;

    invoke-direct {v2, p0, p2}, Lcom/braintreepayments/api/models/c;-><init>(Lcom/braintreepayments/api/models/b;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/braintreepayments/api/models/b;->a:[Lcom/braintreepayments/api/models/c;

    .line 30
    new-instance v0, Lcom/braintreepayments/api/models/d;

    invoke-direct {v0, p0, p1, p3}, Lcom/braintreepayments/api/models/d;-><init>(Lcom/braintreepayments/api/models/b;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/braintreepayments/api/models/b;->b:Lcom/braintreepayments/api/models/d;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
