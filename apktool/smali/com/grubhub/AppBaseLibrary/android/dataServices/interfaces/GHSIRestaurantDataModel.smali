.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TIME_WINDOW_BUFFER_MINUTES:I = 0xa


# virtual methods
.method public abstract getCoupons()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
.end method

.method public abstract getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
.end method

.method public abstract getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
.end method

.method public abstract getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
.end method

.method public abstract getDistanceFromDinerLocationMiles()F
.end method

.method public abstract getEstimatedDeliveryTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
.end method

.method public abstract getEstimatedPickupReadyTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;
.end method

.method public abstract getFutureOrderInfo()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIFutureOrderInfo;
.end method

.method public abstract getHoursOfOperation(Lcom/grubhub/AppBaseLibrary/android/order/g;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/order/g;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatitude()Ljava/lang/String;
.end method

.method public abstract getLongitude()Ljava/lang/String;
.end method

.method public abstract getMenuItemMatchingCount()I
.end method

.method public abstract getMinimumTip()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
.end method

.method public abstract getMinimumTipPercent()D
.end method

.method public abstract getPickupMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;
.end method

.method public abstract getRatingCount()I
.end method

.method public abstract getRestaurantAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
.end method

.method public abstract getRestaurantCuisines()Ljava/util/ArrayList;
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

.method public abstract getRestaurantDescription()Ljava/lang/String;
.end method

.method public abstract getRestaurantDescriptionCondensed()Ljava/lang/String;
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantImage()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRestaurantLogo()Ljava/lang/String;
.end method

.method public abstract getRestaurantMediaImage()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getRestaurantPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getRestaurantPriceRating()I
.end method

.method public abstract getStarRating()F
.end method

.method public abstract hasCoupons()Z
.end method

.method public abstract isAcceptingCash()Z
.end method

.method public abstract isAcceptingCredit()Z
.end method

.method public abstract isCashTipAllowed()Z
.end method

.method public abstract isCrossStreetRequired()Z
.end method

.method public abstract isManagedDelivery()Z
.end method

.method public abstract isNew()Z
.end method

.method public abstract isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z
.end method

.method public abstract isPhoneOnly()Z
.end method

.method public abstract offersDelivery()Z
.end method

.method public abstract offersDeliveryToDinerLocation()Z
.end method

.method public abstract offersPickup()Z
.end method
