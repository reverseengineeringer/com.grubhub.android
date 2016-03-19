.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;


# instance fields
.field private id:Ljava/lang/String;

.field private reviews:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReviews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReviews()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;->reviews:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReviews;

    return-object v0
.end method
