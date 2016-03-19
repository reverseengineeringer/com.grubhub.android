.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;


# instance fields
.field private address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

.field private available_for_delivery:Z

.field private decimal_distance_in_miles:Ljava/lang/Float;

.field private delivery_offered_to_diner_location:Z

.field private open:Z

.field private premium:Z

.field private restaurant_id:Ljava/lang/String;

.field private restaurant_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->street_address:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->locality:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->region:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->postal_code:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->country:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCountry(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDistanceInMiles()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->decimal_distance_in_miles:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 99
    const-string v0, ""

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->decimal_distance_in_miles:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->restaurant_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->restaurant_name:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailableForDelivery()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->available_for_delivery:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->open:Z

    return v0
.end method

.method public isPremium()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->premium:Z

    return v0
.end method

.method public offersDeliveryToDinerLocation()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->delivery_offered_to_diner_location:Z

    return v0
.end method
