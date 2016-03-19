.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p5, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 22
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 24
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->d:Ljava/lang/Integer;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 29
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a()V

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    .line 37
    :cond_0
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCartPaymentDataModel;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCartPaymentDataModel;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCartPaymentDataModel;->setType(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->d:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCartPaymentDataModel;->setAmount(Ljava/lang/Integer;)V

    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCartPaymentDataModel;->setPaymentId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->f()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->onResponse(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
