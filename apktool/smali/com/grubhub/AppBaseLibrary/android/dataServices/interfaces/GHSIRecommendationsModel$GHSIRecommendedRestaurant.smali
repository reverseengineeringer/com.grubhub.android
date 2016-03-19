.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRecommendationsModel$GHSIRecommendedRestaurant;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRecommendationsModel$GHSIRecommendedRestaurant$GHSIRecommendedRestaurantAddress;
.end method

.method public abstract getBayesianRating()Ljava/lang/Double;
.end method

.method public abstract getCuisines()Ljava/util/ArrayList;
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

.method public abstract getDeliveryFee()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
.end method

.method public abstract getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
.end method

.method public abstract getDeliveryTimeEstimate()Ljava/lang/Integer;
.end method

.method public abstract getLogo()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPickupTimeEstimate()Ljava/lang/Integer;
.end method

.method public abstract getPriceRating()Ljava/lang/Integer;
.end method

.method public abstract getRating()Ljava/lang/Double;
.end method

.method public abstract getRatingCount()Ljava/lang/Integer;
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantImage()Ljava/lang/String;
.end method

.method public abstract getRestaurantScore()Ljava/lang/Double;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method
