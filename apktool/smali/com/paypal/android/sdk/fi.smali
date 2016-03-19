.class public Lcom/paypal/android/sdk/fi;
.super Lcom/paypal/android/sdk/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Lcom/paypal/android/sdk/ag;)V
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/ee;

    sget-object v1, Lcom/paypal/android/sdk/cl;->b:Lcom/paypal/android/sdk/cl;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/ee;-><init>(Lcom/paypal/android/sdk/cl;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/af;-><init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Lcom/paypal/android/sdk/ag;)V

    return-void
.end method
