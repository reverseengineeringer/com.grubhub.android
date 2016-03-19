.class final Lcom/paypal/android/sdk/bw;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/paypal/android/sdk/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/bv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/bv;-><init>(B)V

    sput-object v0, Lcom/paypal/android/sdk/bw;->a:Lcom/paypal/android/sdk/bv;

    return-void
.end method

.method static synthetic a()Lcom/paypal/android/sdk/bv;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/bw;->a:Lcom/paypal/android/sdk/bv;

    return-object v0
.end method
