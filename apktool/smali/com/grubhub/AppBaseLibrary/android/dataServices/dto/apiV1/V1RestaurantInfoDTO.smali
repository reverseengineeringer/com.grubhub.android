.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;


# instance fields
.field private acceptingCash:Z

.field private acceptingCreditCard:Z

.field private address:Ljava/lang/String;

.field private availabilityMessage:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private couponCount:Ljava/lang/Integer;

.field private dateTimeArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private deliveryFee:Ljava/lang/Float;

.field private hidingReviews:Z

.field private id:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private menuTeaserText:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private offersCoupons:Z

.field private offersDelivery:Z

.field private offersPickup:Z

.field private onlineOrdering:Z

.field private open:Z

.field private orderMinimum:Ljava/lang/Float;

.field private phone:Ljava/lang/String;

.field private rating:Ljava/lang/Float;

.field private requiresCrossStreet:Z

.field private restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

.field private reviewCount:Ljava/lang/Integer;

.field private state:Ljava/lang/String;

.field private textReviewCount:Ljava/lang/Integer;

.field private tracker:Z

.field private trackerEnabled:Z

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public getCoupons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->deliveryFee:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->deliveryFee:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USD"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->orderMinimum:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->orderMinimum:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USD"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDistanceFromDinerLocationMiles()F
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getEstimatedDeliveryTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;

    const/16 v1, 0x2d

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;-><init>(II)V

    return-object v0
.end method

.method public getEstimatedPickupReadyTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
    .locals 3

    .prologue
    .line 345
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;

    const/16 v1, 0x2d

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;-><init>(II)V

    return-object v0
.end method

.method public getFutureOrderInfo()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIFutureOrderInfo;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoursOfOperation(Lcom/grubhub/AppBaseLibrary/android/order/g;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/order/g;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    if-eqz v0, :cond_3

    .line 167
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->pickupHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->pickupHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;->primary:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->pickupHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;->primary:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;->hours:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->pickupHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;->primary:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;->hours:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHour;

    .line 170
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;

    iget-object v4, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHour;->day:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/String;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHour;->value:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->deliveryHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->deliveryHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;->primary:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->deliveryHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;->primary:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;->hours:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->restaurantHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours;->deliveryHours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSPrimaryHours;->primary:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHours;->hours:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHour;

    .line 178
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;

    iget-object v4, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHour;->day:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/String;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRestaurantHours$GHSHour;->value:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    if-eqz v3, :cond_2

    .line 180
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_3
    return-object v1
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuItemMatchingCount()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumTip()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinimumTipPercent()D
    .locals 2

    .prologue
    .line 272
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPickupMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getRestaurantAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->zip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setPhone(Ljava/lang/String;)V

    .line 144
    return-object v0
.end method

.method public getRestaurantCuisines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantDescriptionCondensed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantMediaImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantPriceRating()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public hasCoupons()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->offersCoupons:Z

    return v0
.end method

.method public isAcceptingCash()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->acceptingCash:Z

    return v0
.end method

.method public isAcceptingCredit()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->acceptingCreditCard:Z

    return v0
.end method

.method public isCashTipAllowed()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public isCrossStreetRequired()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public isManagedDelivery()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->open:Z

    return v0
.end method

.method public isPhoneOnly()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->onlineOrdering:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offersDelivery()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;->offersDelivery:Z

    return v0
.end method

.method public offersDeliveryToDinerLocation()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public offersPickup()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method
