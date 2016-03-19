.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;


# instance fields
.field private availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

.field private city:Ljava/lang/String;

.field private cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

.field private deliveryFee:Ljava/lang/Float;

.field private deliveryFeeText:Ljava/lang/String;

.field private deliveryService:Z

.field private distanceMiles:F

.field private gulpCode:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private offersCoupons:Z

.field private offersDelivery:Z

.field private offersDeliveryToDinerLocation:Z

.field private offersItem:Z

.field private offersPickup:Z

.field private onlineOrdering:Z

.field private orderMinimum:Ljava/lang/Float;

.field private reviewCount:I

.field private sortPositions:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSSortPositions;

.field private starRating:F

.field private state:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

.field private tracker:Z

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "206367"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->id:Ljava/lang/String;

    return-void
.end method

.method private getAvailability()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    return-object v0
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
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->deliveryFee:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->deliveryFee:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USD"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 297
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
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->orderMinimum:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->orderMinimum:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USD"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 306
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
    .line 259
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->distanceMiles:F

    return v0
.end method

.method public getEstimatedDeliveryTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;

    const/16 v1, 0x2d

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;-><init>(II)V

    return-object v0
.end method

.method public getEstimatedPickupReadyTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
    .locals 3

    .prologue
    .line 322
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;

    const/16 v1, 0x2d

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;-><init>(II)V

    return-object v0
.end method

.method public getFutureOrderInfo()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIFutureOrderInfo;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoursOfOperation(Lcom/grubhub/AppBaseLibrary/android/order/g;)Ljava/util/ArrayList;
    .locals 1
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
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuItemMatchingCount()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumTip()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinimumTipPercent()D
    .locals 2

    .prologue
    .line 249
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPickupMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getRestaurantAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->streetAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->zip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 127
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
    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRestaurantDescriptionCondensed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->cuisines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantMediaImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantPriceRating()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->starRating:F

    return v0
.end method

.method public hasCoupons()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->offersCoupons:Z

    return v0
.end method

.method public isAcceptingCash()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->onlineCash:Z
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAcceptingCredit()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->onlineCredit:Z
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;)Z

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCashTipAllowed()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public isCrossStreetRequired()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public isManagedDelivery()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->open:Z
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneOnly()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->onlineOrdering:Z

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
    .line 264
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->offersDelivery:Z

    return v0
.end method

.method public offersDeliveryToDinerLocation()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->offersDeliveryToDinerLocation:Z

    return v0
.end method

.method public offersPickup()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;->offersPickup:Z

    return v0
.end method
