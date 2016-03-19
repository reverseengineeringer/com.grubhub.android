.class public final Lcom/paypal/android/sdk/fh;
.super Lcom/paypal/android/sdk/fo;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/cl;->h:Lcom/paypal/android/sdk/cl;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/fo;-><init>(Lcom/paypal/android/sdk/cl;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/paypal/android/sdk/fh;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fh;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fh;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "mockDeleteCreditCardResponse"

    return-object v0
.end method
