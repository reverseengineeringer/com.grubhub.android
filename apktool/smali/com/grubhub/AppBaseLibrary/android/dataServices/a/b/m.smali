.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p5, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 34
    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->b:Z

    .line 35
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->c:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->toLoggingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 141
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v4, "submit order"

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "delivery"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "successful"

    .line 145
    :goto_1
    invoke-direct {p0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v1, v0, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 147
    return-void

    .line 141
    :cond_0
    const-string v0, "pickup"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "error"

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 41
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 43
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->f()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 93
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    .line 96
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;-><init>()V

    .line 97
    invoke-virtual {p1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V

    .line 98
    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v3

    .line 101
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->Y()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    move-result-object v0

    .line 103
    if-eqz v3, :cond_0

    .line 104
    const-string v4, "UserId"

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    const-string v3, "BillId"

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCartId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "PaymentId"

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    if-eqz p1, :cond_3

    .line 113
    const-string v3, "ErrorProperty"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "ErrorServerMessage"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/b/c;->b()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_3
    const-string v0, "PAYMENTS_CHECKOUT_INVALID"

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 121
    return-void

    :cond_4
    move-object v0, v1

    .line 109
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 113
    goto :goto_1
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;)V
    .locals 8

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 49
    if-eqz p1, :cond_2

    .line 50
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->n()I

    move-result v3

    .line 51
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v4

    .line 54
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->d()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v5

    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 61
    if-lez v3, :cond_1

    .line 62
    const-string v1, "repeat order"

    .line 66
    :goto_1
    const-string v7, "New_Or_RepeatOrder"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 73
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v4, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/utils/c/i;

    move-result-object v0

    .line 70
    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/i;)V

    .line 77
    add-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(I)V

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    .line 85
    :goto_2
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 86
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "first-time order"

    goto :goto_1

    .line 83
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    goto :goto_2
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;)V

    return-void
.end method
