.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected brand:Ljava/lang/String;

.field protected diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

.field protected group:Ljava/lang/Boolean;

.field protected order_number:Ljava/lang/String;

.field protected order_tracking:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

.field protected start_time:Ljava/lang/String;

.field protected state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;-><init>()V

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->id:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->group_id:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->brand:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->when_for:Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->start_time:Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->time_placed:Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->currency:Ljava/lang/String;

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->state:Ljava/lang/String;

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->asap:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->group:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_number:Ljava/lang/String;

    .line 113
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    .line 114
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->fulfillment_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;

    .line 115
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    .line 116
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_tracking:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->restaurant_ids:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->restaurant_ids:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    if-lez v1, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->payments:Ljava/util/Map;

    .line 123
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    const-class v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartPaymentDTO;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 127
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->payments:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getDinerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->email:Ljava/lang/String;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDinerGrandTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->diner_grand_total:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->diner_grand_total:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDinerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->name:Ljava/lang/String;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDinerPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->phone:Ljava/lang/String;

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFoodItemsCommaSeparated()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 224
    const-string v1, ""

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO;

    .line 226
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->fulfillment_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->fulfillment_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPastOrderItemList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel$GHSIPastOrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->restaurant_ids:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->restaurant_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->restaurant_ids:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantLogoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimePlacedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->getTimePlacedMillis()J

    move-result-wide v0

    .line 207
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 208
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMMM dd, yyyy, h:mm a"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 209
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 210
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrderItems()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;->line_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrderTrackingEnabled()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_tracking:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_tracking:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

    iget-boolean v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;->enabled:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->group_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->brand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->when_for:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->start_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->time_placed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->asap:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->group:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->diner_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->fulfillment_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FulfillmentInfoDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->charges:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 301
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->order_tracking:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->restaurant_ids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->payments:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->payments:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->payments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO;->payments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    .line 310
    :cond_1
    return-void
.end method
