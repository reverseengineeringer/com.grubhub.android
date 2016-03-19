.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;


# instance fields
.field private id:Ljava/lang/String;

.field private reviews:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReviews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReviews()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;->reviews:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReviews;

    return-object v0
.end method
