.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIFutureOrderInfo;


# instance fields
.field private open_order_send_time_delivery:Ljava/lang/Boolean;

.field private open_order_send_time_pickup:Ljava/lang/Boolean;

.field private order_send_time_delivery:Ljava/lang/String;

.field private order_send_time_pickup:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderSendTimeDelivery()J
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;->order_send_time_delivery:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrderSendTimePickup()J
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;->order_send_time_pickup:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public isOpenOrderSendTimeDelivery()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;->open_order_send_time_delivery:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;->open_order_send_time_delivery:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenOrderSendTimePickup()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;->open_order_send_time_pickup:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;->open_order_send_time_pickup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
