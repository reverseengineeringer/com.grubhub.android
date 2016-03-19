.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addToReviewList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRatingCount()I
.end method

.method public abstract getRestaurantScore()F
.end method

.method public abstract getReviewList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateRatingCount(I)V
.end method
