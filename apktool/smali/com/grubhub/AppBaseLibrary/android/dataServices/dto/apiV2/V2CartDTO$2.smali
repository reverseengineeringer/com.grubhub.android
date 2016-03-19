.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;->getGiftCardDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;

.field final synthetic val$pair:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;->val$pair:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscountCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;->val$pair:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiscountCodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->GIFT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiscountDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiscountId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;->val$pair:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiscountValue()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;->val$pair:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;->getAmount()Ljava/lang/Integer;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;->centsToDollars(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiscountValueCents()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO$2;->val$pair:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;->getAmount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
