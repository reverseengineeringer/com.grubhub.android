.class public final Lcom/paypal/android/sdk/ee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/dx;


# instance fields
.field private a:Lcom/paypal/android/sdk/cl;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/cl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/ee;->a:Lcom/paypal/android/sdk/cl;

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/cl;->values()[Lcom/paypal/android/sdk/cl;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Lcom/paypal/android/sdk/ee;

    invoke-direct {v5, v4}, Lcom/paypal/android/sdk/ee;-><init>(Lcom/paypal/android/sdk/cl;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ee;->a:Lcom/paypal/android/sdk/cl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/paypal/android/sdk/ap;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ee;->a:Lcom/paypal/android/sdk/cl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cl;->a()Lcom/paypal/android/sdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ee;->a:Lcom/paypal/android/sdk/cl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cl;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
