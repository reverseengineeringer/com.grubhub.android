.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;


# instance fields
.field private account_id:Ljava/lang/String;

.field private collected_tip:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMoney;

.field private contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

.field private created:Ljava/lang/String;

.field private dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

.field private id:Ljava/lang/String;

.field private metadata:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;

.field private name:Ljava/lang/String;

.field private pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

.field private preferences:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPrefs;

.field private status:Ljava/lang/String;

.field private times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

.field private total:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMoney;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->account_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()Ljava/util/ArrayList;
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
    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->contents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCourierFirstName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 283
    if-gez v1, :cond_2

    .line 284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCourierLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->geo:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSLocation;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$2100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public getCourierPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCourierPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->photo_url:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$2000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCourierVehicleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->vehicle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->courier:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->vehicle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;->access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSCourier;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;->access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSVehicle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getDinerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDropoffAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 102
    :cond_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->street_address1:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->street_address2:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->city:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->state:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->postal_code:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDropoffLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->geo:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSLocation;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public getDropoffNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->notes:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDropoffPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDropoffTime()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v1

    if-nez v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v2

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->timestamp:Ljava/lang/String;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm aa"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDropoffTimeRange()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->getDropoffTime()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :goto_0
    return-object v0

    .line 250
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm aa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 261
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v2, "%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->metadata:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->metadata:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;->grubhub_order_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;->access$1500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSMetadata;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPickupAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->street_address1:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->street_address2:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->city:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->state:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->postal_code:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPickupLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->geo:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSLocation;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public getPickupNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->notes:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPickupPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPickupTime()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v1

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v2

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->timestamp:Ljava/lang/String;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm aa"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSPickupDropoff;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isDropoffTimeEstimate()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->dropoff:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->access$1100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "estimate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPickupTimeEstimate()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSDeliveryDataModel;->times:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTimes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;->access$1100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryLookupDTO$GHSTime;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "estimate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
