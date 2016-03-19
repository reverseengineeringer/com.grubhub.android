.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private customerServiceContact:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCustomerServiceContact;

.field private expectedDeliveryTime:Ljava/lang/String;

.field private expectedPickupTime:Ljava/lang/String;

.field private order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findDiscountsInCheckArray([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 597
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->check:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->check:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;->lineItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->check:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;->lineItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;)Ljava/util/ArrayList;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;

    .line 601
    array-length v4, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, p1, v1

    .line 603
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 605
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$1;)V

    .line 607
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->code:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->access$2200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->code:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->access$2102(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->description:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->access$2400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->description:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->access$2302(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->type:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->access$2502(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->value:Ljava/lang/Float;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;)Ljava/lang/Float;

    move-result-object v6

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->value:Ljava/lang/Float;
    invoke-static {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->access$2602(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/Float;)Ljava/lang/Float;

    .line 611
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getAmountDue()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v1, "TOTAL"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getAmountDueCents()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v1, "TOTAL"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v2, "TIP"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCartState()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSCartState;
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomerContactPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->customerServiceContact:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCustomerServiceContact;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->customerServiceContact:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCustomerServiceContact;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCustomerServiceContact;->phone:Ljava/lang/String;

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeliveryAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeliveryFee()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v1, "DELIVERY"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getDinerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpectedTimeInMillis()J
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderMethod:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    .line 557
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderMethod:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delivery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    .line 558
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->expectedDeliveryTimeInMillis:Ljava/lang/Long;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->expectedDeliveryTimeInMillis:Ljava/lang/Long;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 561
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getGiftCardDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrandTotalCents()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderItems:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItems;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItems;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderItems:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItems;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItems;

    move-result-object v1

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItems;->orderItem:Ljava/util/ArrayList;

    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    :cond_0
    return-object v0
.end method

.method public getOrderPaymentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->paymentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderSpecialInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->specialInstructions:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderMethod:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderMethod:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delivery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 384
    :goto_0
    return-object v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->orderMethod:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    goto :goto_0

    .line 384
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY_OR_PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    goto :goto_0
.end method

.method public getPromoCodeDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 525
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CASHVOUCHER"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "GIFTCARD"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PROMO"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->findDiscountsInCheckArray([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    goto :goto_0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->restaurantId:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtotal()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v1, "SUBTOTAL"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtotalInCents()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTax()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v1, "TAX"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimePlacedMillis()J
    .locals 2

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTip()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v1, "TIP"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->findKeyStringinCheckArray(Ljava/lang/String;)Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->tipType:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->tipType:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    .line 422
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->INCLUDE_IN_BILL:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    goto :goto_0
.end method

.method public isAsapOrder()Z
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public setTip(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 437
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v2, "TIP"

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->putKeyStringinCheckedArray(Ljava/lang/String;F)V
    invoke-static {v1, v2, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;F)V

    .line 445
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->order:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;

    const-string v2, "AMOUNT_DUE"

    add-float/2addr v0, p1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->putKeyStringinCheckedArray(Ljava/lang/String;F)V
    invoke-static {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;->access$1500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrder;Ljava/lang/String;F)V

    .line 447
    :cond_0
    return-void
.end method
