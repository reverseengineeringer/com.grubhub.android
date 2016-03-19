.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private orderCount:I

.field private reviewCount:I

.field private reviewCreatedDate:J

.field private reviewer:Ljava/lang/String;

.field private reviewerLastOrderFromCustomerDate:J

.field private starRating:I

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->orderCount:I

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->reviewCount:I

    return v0
.end method

.method public getReviewCreatedDate()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->reviewCreatedDate:J

    return-wide v0
.end method

.method public getReviewer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->reviewer:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewerLastOrderFromCustomerDate()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->reviewerLastOrderFromCustomerDate:J

    return-wide v0
.end method

.method public getSentiment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStarRating()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel$GHSReview;->starRating:I

    return v0
.end method
