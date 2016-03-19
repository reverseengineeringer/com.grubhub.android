.class public final enum Lcom/paypal/android/sdk/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/o;

.field public static final enum b:Lcom/paypal/android/sdk/o;

.field public static final enum c:Lcom/paypal/android/sdk/o;

.field public static final enum d:Lcom/paypal/android/sdk/o;

.field public static final enum e:Lcom/paypal/android/sdk/o;

.field public static final enum f:Lcom/paypal/android/sdk/o;

.field public static final enum g:Lcom/paypal/android/sdk/o;

.field public static final enum h:Lcom/paypal/android/sdk/o;

.field public static final enum i:Lcom/paypal/android/sdk/o;

.field public static final enum j:Lcom/paypal/android/sdk/o;

.field public static final enum k:Lcom/paypal/android/sdk/o;

.field public static final enum l:Lcom/paypal/android/sdk/o;

.field public static final enum m:Lcom/paypal/android/sdk/o;

.field public static final enum n:Lcom/paypal/android/sdk/o;

.field public static final enum o:Lcom/paypal/android/sdk/o;

.field public static final p:Ljava/util/Collection;

.field public static final q:Ljava/util/Collection;

.field private static final synthetic t:[Lcom/paypal/android/sdk/o;


# instance fields
.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "FUTURE_PAYMENTS"

    const-string v2, "https://uri.paypal.com/services/payments/futurepayments"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->a:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "PROFILE"

    const-string v2, "profile"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->b:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "PAYPAL_ATTRIBUTES"

    const-string v2, "https://uri.paypal.com/services/paypalattributes"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->c:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "OPENID"

    const-string v2, "openid"

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->d:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "EMAIL"

    const-string v2, "email"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->e:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "ADDRESS"

    const/4 v2, 0x5

    const-string v3, "address"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->f:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "PHONE"

    const/4 v2, 0x6

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->g:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "GET_FUNDING_OPTIONS"

    const/4 v2, 0x7

    const-string v3, "https://uri.paypal.com/services/payments/funding-options"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->h:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "PAYMENT_CODE"

    const/16 v2, 0x8

    const-string v3, "https://uri.paypal.com/services/pos/payments"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->i:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "MIS_CUSTOMER"

    const/16 v2, 0x9

    const-string v3, "https://uri.paypal.com/services/mis/customer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->j:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "FINANCIAL_INSTRUMENTS"

    const/16 v2, 0xa

    const-string v3, "https://uri.paypal.com/services/wallet/financial-instruments/view"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->k:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "SEND_MONEY"

    const/16 v2, 0xb

    const-string v3, "https://uri.paypal.com/services/wallet/sendmoney"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->l:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "REQUEST_MONEY"

    const/16 v2, 0xc

    const-string v3, "https://uri.paypal.com/services/wallet/money-request/requests"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->m:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "LOYALTY"

    const/16 v2, 0xd

    const-string v3, "https://uri.paypal.com/services/loyalty/memberships/update"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->n:Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/o;

    const-string v1, "EXPRESS_CHECKOUT"

    const/16 v2, 0xe

    const-string v3, "https://uri.paypal.com/services/expresscheckout"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/o;->o:Lcom/paypal/android/sdk/o;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/paypal/android/sdk/o;

    sget-object v1, Lcom/paypal/android/sdk/o;->a:Lcom/paypal/android/sdk/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/o;->b:Lcom/paypal/android/sdk/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/o;->c:Lcom/paypal/android/sdk/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/paypal/android/sdk/o;->d:Lcom/paypal/android/sdk/o;

    aput-object v1, v0, v7

    sget-object v1, Lcom/paypal/android/sdk/o;->e:Lcom/paypal/android/sdk/o;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/paypal/android/sdk/o;->f:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/paypal/android/sdk/o;->g:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/paypal/android/sdk/o;->h:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/paypal/android/sdk/o;->i:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/paypal/android/sdk/o;->j:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/paypal/android/sdk/o;->k:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/paypal/android/sdk/o;->l:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/paypal/android/sdk/o;->m:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/paypal/android/sdk/o;->n:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/paypal/android/sdk/o;->o:Lcom/paypal/android/sdk/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/sdk/o;->t:[Lcom/paypal/android/sdk/o;

    new-instance v0, Lcom/paypal/android/sdk/p;

    invoke-direct {v0}, Lcom/paypal/android/sdk/p;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/o;->p:Ljava/util/Collection;

    new-instance v0, Lcom/paypal/android/sdk/q;

    invoke-direct {v0}, Lcom/paypal/android/sdk/q;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/o;->q:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/paypal/android/sdk/o;->r:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/paypal/android/sdk/o;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/o;->s:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/o;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/o;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/o;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/o;->t:[Lcom/paypal/android/sdk/o;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/o;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/o;->r:Ljava/lang/String;

    return-object v0
.end method
