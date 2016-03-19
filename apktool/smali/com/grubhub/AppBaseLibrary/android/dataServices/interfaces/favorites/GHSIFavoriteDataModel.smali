.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acceptsCash()Z
.end method

.method public abstract acceptsCreditCard()Z
.end method

.method public abstract getCouponCount()I
.end method

.method public abstract getDeliveryFee()F
.end method

.method public abstract getDistanceInMiles()Ljava/lang/String;
.end method

.method public abstract getLatitude()Ljava/lang/String;
.end method

.method public abstract getLongitude()Ljava/lang/String;
.end method

.method public abstract getOrderMinimum()F
.end method

.method public abstract getRating()F
.end method

.method public abstract getRestaurantAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
.end method

.method public abstract getRestaurantDeliveryHours()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getRestaurantPickupHours()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReviewCount()Ljava/lang/String;
.end method

.method public abstract isManagedDelivery()Z
.end method

.method public abstract isOpen()Ljava/lang/Boolean;
.end method

.method public abstract offersCoupons()Z
.end method

.method public abstract offersDelivery()Z
.end method

.method public abstract offersDeliveryToDinerLocation()Z
.end method

.method public abstract offersOnlineOrdering()Z
.end method

.method public abstract offersPickup()Z
.end method

.method public abstract requiresCrossStreet()Z
.end method
