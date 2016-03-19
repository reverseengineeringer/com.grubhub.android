.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 28
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 30
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->G()Ljava/util/ArrayList;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 67
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->isSingleUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/ArrayList;)V

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 34
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 36
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v1

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->f()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->g(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 40
    return-void

    .line 37
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;)V
    .locals 2

    .prologue
    .line 44
    if-eqz p1, :cond_1

    .line 45
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;->getStatus()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel$Status;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel$Status;->SUCCESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel$Status;

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne v0, v1, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->i()V

    .line 56
    :cond_1
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;)V

    return-void
.end method
