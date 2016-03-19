.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSISavedPaymentDataModel;


# instance fields
.field private createDate:J

.field private creditCardBillingZip:Ljava/lang/String;

.field private creditCardLastFour:Ljava/lang/String;

.field private creditCardType:Ljava/lang/String;

.field private disabled:Z

.field private expirationDate:J

.field private expired:Z

.field private id:I

.field private loginUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreationDate()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->createDate:J

    return-wide v0
.end method

.method public getCreditCardBillingZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->creditCardBillingZip:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditCardLastFour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->creditCardLastFour:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->creditCardType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->expirationDate:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->id:I

    return v0
.end method

.method public getLoginUserId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->loginUserId:I

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->disabled:Z

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedPaymentDTO;->expired:Z

    return v0
.end method
