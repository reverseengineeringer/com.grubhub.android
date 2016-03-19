.class Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;->getCreditCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    .line 124
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 132
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    .line 134
    if-nez v0, :cond_2

    .line 135
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;-><init>()V

    .line 138
    :cond_2
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedCreditCardId(Ljava/lang/String;)V

    .line 139
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V

    .line 145
    :goto_1
    return-void

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_FAILURE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;)V

    return-void
.end method
