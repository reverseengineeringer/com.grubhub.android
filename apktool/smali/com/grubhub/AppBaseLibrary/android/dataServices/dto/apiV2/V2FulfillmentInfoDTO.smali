.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DELIVERY:Ljava/lang/String; = "DELIVERY"

.field protected static final INCOMPLETE_DELIVERY:Ljava/lang/String; = "INCOMPLETE_DELIVERY"

.field protected static final INCOMPLETE_PICKUP:Ljava/lang/String; = "INCOMPLETE_PICKUP"

.field protected static final PICKUP:Ljava/lang/String; = "PICKUP"


# instance fields
.field protected delivery_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

.field protected geo_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeoInfoDTO;

.field protected incomplete_delivery:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

.field protected incomplete_pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

.field protected individual_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2IndividualInfoDTO;

.field protected pickup_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

.field protected type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->type:Ljava/lang/String;

    .line 30
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->delivery_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    .line 31
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->incomplete_delivery:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    .line 32
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->pickup_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    .line 33
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->incomplete_pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    .line 34
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeoInfoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeoInfoDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->geo_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeoInfoDTO;

    .line 35
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2IndividualInfoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2IndividualInfoDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->individual_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2IndividualInfoDTO;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 2

    .prologue
    .line 39
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 44
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "PICKUP"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->delivery_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->incomplete_delivery:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeliveryInfoDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->pickup_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->incomplete_pickup:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PickupDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->geo_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeoInfoDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->individual_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2IndividualInfoDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
