.class public final enum Lcom/paypal/android/sdk/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/t;

.field private static enum b:Lcom/paypal/android/sdk/t;

.field private static final synthetic c:[Lcom/paypal/android/sdk/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/t;

    const-string v1, "token"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/t;->b:Lcom/paypal/android/sdk/t;

    new-instance v0, Lcom/paypal/android/sdk/t;

    const-string v1, "code"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/t;->a:Lcom/paypal/android/sdk/t;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/paypal/android/sdk/t;

    sget-object v1, Lcom/paypal/android/sdk/t;->b:Lcom/paypal/android/sdk/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/t;->a:Lcom/paypal/android/sdk/t;

    aput-object v1, v0, v3

    sput-object v0, Lcom/paypal/android/sdk/t;->c:[Lcom/paypal/android/sdk/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/t;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/t;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/t;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/t;->c:[Lcom/paypal/android/sdk/t;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/t;

    return-object v0
.end method
