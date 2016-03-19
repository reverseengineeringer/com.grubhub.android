.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSISortOptionList;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getApiToAppSortNameMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSortOptionList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/c/a/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAuctionSort()Z
.end method

.method public abstract hasDefaultSort()Z
.end method

.method public abstract hasDeliveryEstimateAscending()Z
.end method

.method public abstract hasDeliveryFeeAscending()Z
.end method

.method public abstract hasDeliveryMinimumAscending()Z
.end method

.method public abstract hasDistanceAscending()Z
.end method

.method public abstract hasPickupEstimateAscending()Z
.end method

.method public abstract hasPriceAscending()Z
.end method

.method public abstract hasRatingDescending()Z
.end method

.method public abstract hasRelevanceSort()Z
.end method

.method public abstract hasRestaurantNameAscending()Z
.end method

.method public abstract hasStandardSort()Z
.end method
