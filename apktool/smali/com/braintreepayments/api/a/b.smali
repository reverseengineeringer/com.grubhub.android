.class public final enum Lcom/braintreepayments/api/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/a/b;

.field private static final BRAINTREE_MERCHANT_ID:Ljava/lang/String; = "600000"

.field public static final enum PRODUCTION:Lcom/braintreepayments/api/a/b;

.field public static final enum QA:Lcom/braintreepayments/api/a/b;

.field public static final enum SANDBOX:Lcom/braintreepayments/api/a/b;


# instance fields
.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/braintreepayments/api/a/b;

    const-string v1, "QA"

    const-string v2, "https://assets.qa.braintreegateway.com/data/logo.htm"

    invoke-direct {v0, v1, v3, v2}, Lcom/braintreepayments/api/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braintreepayments/api/a/b;->QA:Lcom/braintreepayments/api/a/b;

    .line 5
    new-instance v0, Lcom/braintreepayments/api/a/b;

    const-string v1, "SANDBOX"

    const-string v2, "https://assets.braintreegateway.com/sandbox/data/logo.htm"

    invoke-direct {v0, v1, v4, v2}, Lcom/braintreepayments/api/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braintreepayments/api/a/b;->SANDBOX:Lcom/braintreepayments/api/a/b;

    .line 6
    new-instance v0, Lcom/braintreepayments/api/a/b;

    const-string v1, "PRODUCTION"

    const-string v2, "https://assets.braintreegateway.com/data/logo.htm"

    invoke-direct {v0, v1, v5, v2}, Lcom/braintreepayments/api/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braintreepayments/api/a/b;->PRODUCTION:Lcom/braintreepayments/api/a/b;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/braintreepayments/api/a/b;

    sget-object v1, Lcom/braintreepayments/api/a/b;->QA:Lcom/braintreepayments/api/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/braintreepayments/api/a/b;->SANDBOX:Lcom/braintreepayments/api/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/braintreepayments/api/a/b;->PRODUCTION:Lcom/braintreepayments/api/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/braintreepayments/api/a/b;->$VALUES:[Lcom/braintreepayments/api/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/braintreepayments/api/a/b;->mUrl:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/a/b;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/braintreepayments/api/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/a/b;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/a/b;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/braintreepayments/api/a/b;->$VALUES:[Lcom/braintreepayments/api/a/b;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/a/b;

    return-object v0
.end method


# virtual methods
.method public getCollectorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/braintreepayments/api/a/b;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "600000"

    return-object v0
.end method
