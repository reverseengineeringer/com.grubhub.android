.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;


# instance fields
.field private amount:Ljava/lang/Integer;

.field private id:Ljava/lang/String;

.field private paymentId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getAmount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->setAmount(Ljava/lang/Integer;)V

    .line 26
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->setPaymentId(Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->setId(Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->setType(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->paymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->amount:Ljava/lang/Integer;

    .line 35
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->id:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPaymentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->paymentId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setType(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDataModelDTO;->type:Ljava/lang/String;

    .line 65
    return-void
.end method
