.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addToRestaurantList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCuisineList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getErrorMessages()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel$GHSIErrorMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMarketType()Ljava/lang/String;
.end method

.method public abstract getRestaurantMatchingRestaurantId(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
.end method

.method public abstract getRestaurants()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSearchId()Ljava/lang/String;
.end method

.method public abstract getSearchTermUsed()Ljava/lang/String;
.end method

.method public abstract getSortItemPrettyNames()Ljava/util/Map;
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

.method public abstract getTotalResults()Ljava/lang/Long;
.end method

.method public abstract getTotalResultsOmittingOpenTimes()I
.end method

.method public abstract hasPriceFilterOption()Z
.end method

.method public abstract hasRatingsFilterOption()Z
.end method

.method public abstract saveGHSIRestaurantListDataModel()V
.end method

.method public abstract updateFilterModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
.end method
