.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public completeOrderTime:J

.field public date:Ljava/lang/String;

.field public dinerGrandTotal:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field private items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

.field public needsReview:Z

.field public orderMethod:Ljava/lang/String;

.field public restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

.field public systemOfRecord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->completeOrderTime:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->id:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->orderMethod:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->needsReview:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->date:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->systemOfRecord:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->dinerGrandTotal:Ljava/lang/String;

    .line 117
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    .line 118
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDinerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDinerGrandTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->dinerGrandTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getDinerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDinerPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFoodItemsCommaSeparated()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    const-string v1, ""

    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->item:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->item:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;

    .line 214
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_1
    return-object v1
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->orderMethod:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->orderMethod:Ljava/lang/String;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    const v3, 0x7f080401

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->orderMethod:Ljava/lang/String;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    const v3, 0x7f080404

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 235
    :cond_1
    return-object v0
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
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    :cond_0
    return-object v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;->id:Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;->lat:Ljava/lang/String;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantLogoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;->logoURL:Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;->lng:Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;->name:Ljava/lang/String;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimePlacedMillis()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->completeOrderTime:J

    return-wide v0
.end method

.method public getTimePlacedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 197
    const-string v0, ""

    .line 198
    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->completeOrderTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->completeOrderTime:J

    const/16 v1, 0x15

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    return-object v0
.end method

.method public hasOrderItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 261
    :cond_0
    return v0
.end method

.method public isOrderTrackingEnabled()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderRestaurant;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 278
    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->completeOrderTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->orderMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->needsReview:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->systemOfRecord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->dinerGrandTotal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrder;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItems;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 286
    return-void

    :cond_0
    move v0, v1

    .line 281
    goto :goto_0
.end method
