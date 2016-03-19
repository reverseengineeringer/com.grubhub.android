.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

.field private customerId:Ljava/lang/String;

.field private delivery:Ljava/lang/Boolean;

.field private deliveryStatus:Ljava/lang/String;

.field private dinerName:Ljava/lang/String;

.field private driverName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private estimateEndTime:Ljava/lang/Long;

.field private estimateStartTime:Ljava/lang/Long;

.field private expectedDeliveryTimeInMillis:Ljava/lang/Long;

.field private mapTrackable:Ljava/lang/Boolean;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private orderCompletionTimeInMillis:Ljava/lang/Long;

.field private orderEvents:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;

.field private orderId:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private recentOrderIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private restOrderRestNames:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$RestNames;

.field private restaurantName:Ljava/lang/String;

.field private restaurantPhone:Ljava/lang/String;

.field private restaurantTimeZone:Ljava/lang/String;

.field private specialInstructions:Ljava/lang/String;

.field private statusTrackable:Ljava/lang/String;

.field private tip:Ljava/lang/String;

.field private tygRestaurant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDelivery()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->delivery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeliveryStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->deliveryStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDinerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->dinerName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->driverName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEstimateEndTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->estimateEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getEstimateStartTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->estimateStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getExpectedDeliveryTimeInMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->expectedDeliveryTimeInMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getMapTrackable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->mapTrackable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMessages()Ljava/util/ArrayList;
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
    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrderCompletionTimeInMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->orderCompletionTimeInMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getOrderEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->orderEvents:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;->getOrderEvent()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->orderStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentOrderIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->recentOrderIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->restaurantName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->restaurantPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->restaurantTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->specialInstructions:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTrackable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->statusTrackable:Ljava/lang/String;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public getTygRestaurant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;->tygRestaurant:Ljava/lang/String;

    return-object v0
.end method
