.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;


# instance fields
.field private accepts_cash:Z

.field private accepts_credit:Z

.field private address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

.field private coupons_available:Z

.field private cuisines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delivery:Z

.field private delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

.field private delivery_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

.field private delivery_time_estimate:I

.field private description:Ljava/lang/String;

.field private distance_from_location:F

.field private exact_delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

.field private logo:Ljava/lang/String;

.field private media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

.field private menu_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private min_delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

.field private name:Ljava/lang/String;

.field private new_restaurant:Z

.field private phone_number:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;

.field private phone_only:Z

.field private pickup:Z

.field private pickup_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

.field private pickup_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

.field private pickup_time_estimate:I

.field private price_rating:I

.field private ratings:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;

.field private restaurant_id:Ljava/lang/String;

.field private time_zone:Ljava/lang/String;

.field private track_your_grub:Z

.field private vendor_location_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->exact_delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

    return-object v0
.end method

.method public getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

    return-object v0
.end method

.method public getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->min_delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

    return-object v0
.end method

.method public getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->delivery_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

    return-object v0
.end method

.method public getDistanceFromDinerLocationMiles()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->distance_from_location:F

    return v0
.end method

.method public getEstimatedDeliveryTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
    .locals 3

    .prologue
    .line 371
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->delivery_time_estimate:I

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->delivery_time_estimate:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;-><init>(II)V

    return-object v0
.end method

.method public getEstimatedPickupReadyTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
    .locals 3

    .prologue
    .line 376
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->pickup_time_estimate:I

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->pickup_time_estimate:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;-><init>(II)V

    return-object v0
.end method

.method public getFutureOrderInfo()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIFutureOrderInfo;
    .locals 1

    .prologue
    .line 390
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
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuItemMatchingCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->menu_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->menu_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumTip()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinimumTipPercent()D
    .locals 2

    .prologue
    .line 311
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPickupMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->pickup_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPrice;

    return-object v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->ratings:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->ratings:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_count:I
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;)I

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->street_address:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_locality:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_region:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->postal_code:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_country:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->phone_number:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->phone_number:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->phone_number:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setPhone(Ljava/lang/String;)V

    .line 148
    :cond_0
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
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRestaurantDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

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

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRestaurantDescriptionCondensed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
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

    .line 129
    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->restaurant_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->vendor_location_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/j;->b()I

    move-result v0

    .line 207
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a()I

    move-result v1

    .line 208
    const-string v2, "%s%s/%s/%s/?fs=1"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "http://s1.seamless.com/-/ri/vl/"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->vendor_location_id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->logo:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRestaurantLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantMediaImage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->tag:Ljava/lang/String;

    const-string v2, "placeholder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 232
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 233
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->o()F

    move-result v3

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->base_url:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->tag:Ljava/lang/String;

    const-string v5, "search"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "c_fill"

    .line 249
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",w_"

    .line 250
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",h_"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dpr_"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->public_id:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;->format:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :cond_3
    const-string v0, "c_fit"

    goto :goto_1
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->phone_number:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->phone_number:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->phone_number:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantPriceRating()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->price_rating:I

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->ratings:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->ratings:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_value:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->ratings:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_value:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCoupons()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->coupons_available:Z

    return v0
.end method

.method public isAcceptingCash()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->accepts_cash:Z

    return v0
.end method

.method public isAcceptingCredit()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->accepts_credit:Z

    return v0
.end method

.method public isCashTipAllowed()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public isCrossStreetRequired()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public isManagedDelivery()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->new_restaurant:Z

    return v0
.end method

.method public isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isPhoneOnly()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->phone_only:Z

    return v0
.end method

.method public offersDelivery()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->delivery:Z

    return v0
.end method

.method public offersDeliveryToDinerLocation()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public offersPickup()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSRestaurant;->pickup:Z

    return v0
.end method
