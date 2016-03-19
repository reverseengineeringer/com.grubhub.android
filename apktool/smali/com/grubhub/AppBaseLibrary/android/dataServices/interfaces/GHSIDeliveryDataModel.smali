.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccountId()Ljava/lang/String;
.end method

.method public abstract getContents()Ljava/util/ArrayList;
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

.method public abstract getCourierFirstName()Ljava/lang/String;
.end method

.method public abstract getCourierLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;
.end method

.method public abstract getCourierPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getCourierPhoto()Ljava/lang/String;
.end method

.method public abstract getCourierVehicleType()Ljava/lang/String;
.end method

.method public abstract getCreatedTime()Ljava/lang/String;
.end method

.method public abstract getDeliveryId()Ljava/lang/String;
.end method

.method public abstract getDinerName()Ljava/lang/String;
.end method

.method public abstract getDropoffAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
.end method

.method public abstract getDropoffLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;
.end method

.method public abstract getDropoffNotes()Ljava/lang/String;
.end method

.method public abstract getDropoffPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getDropoffTime()Ljava/lang/String;
.end method

.method public abstract getDropoffTimeRange()Ljava/lang/String;
.end method

.method public abstract getOrderId()Ljava/lang/String;
.end method

.method public abstract getPickupAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
.end method

.method public abstract getPickupLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;
.end method

.method public abstract getPickupNotes()Ljava/lang/String;
.end method

.method public abstract getPickupPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPickupTime()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract isDropoffTimeEstimate()Z
.end method

.method public abstract isPickupTimeEstimate()Z
.end method
