.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
.end method

.method public abstract getCustomerId()Ljava/lang/String;
.end method

.method public abstract getDelivery()Ljava/lang/Boolean;
.end method

.method public abstract getDeliveryStatus()Ljava/lang/String;
.end method

.method public abstract getDinerName()Ljava/lang/String;
.end method

.method public abstract getDriverName()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getEstimateEndTime()Ljava/lang/Long;
.end method

.method public abstract getEstimateStartTime()Ljava/lang/Long;
.end method

.method public abstract getExpectedDeliveryTimeInMillis()Ljava/lang/Long;
.end method

.method public abstract getMapTrackable()Ljava/lang/Boolean;
.end method

.method public abstract getMessages()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrderCompletionTimeInMillis()Ljava/lang/Long;
.end method

.method public abstract getOrderEvents()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrderId()Ljava/lang/String;
.end method

.method public abstract getOrderStatus()Ljava/lang/String;
.end method

.method public abstract getRecentOrderIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getRestaurantPhone()Ljava/lang/String;
.end method

.method public abstract getRestaurantTimeZone()Ljava/lang/String;
.end method

.method public abstract getSpecialInstructions()Ljava/lang/String;
.end method

.method public abstract getStatusTrackable()Ljava/lang/String;
.end method

.method public abstract getTip()Ljava/lang/String;
.end method

.method public abstract getTygRestaurant()Ljava/lang/String;
.end method
