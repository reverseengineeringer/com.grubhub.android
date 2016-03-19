.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getDinerEmail()Ljava/lang/String;
.end method

.method public abstract getDinerGrandTotal()Ljava/lang/String;
.end method

.method public abstract getDinerName()Ljava/lang/String;
.end method

.method public abstract getDinerPhone()Ljava/lang/String;
.end method

.method public abstract getFoodItemsCommaSeparated()Ljava/lang/String;
.end method

.method public abstract getOrderId()Ljava/lang/String;
.end method

.method public abstract getOrderNumber()Ljava/lang/String;
.end method

.method public abstract getOrderState()Ljava/lang/String;
.end method

.method public abstract getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
.end method

.method public abstract getPastOrderItemList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel$GHSIPastOrderItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantLatitude()Ljava/lang/String;
.end method

.method public abstract getRestaurantLogoURL()Ljava/lang/String;
.end method

.method public abstract getRestaurantLongitude()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getTimePlacedMillis()J
.end method

.method public abstract getTimePlacedString()Ljava/lang/String;
.end method

.method public abstract hasOrderItems()Z
.end method

.method public abstract isOrderTrackingEnabled()Z
.end method
