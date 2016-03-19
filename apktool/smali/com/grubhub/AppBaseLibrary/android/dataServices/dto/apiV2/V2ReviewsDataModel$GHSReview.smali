.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private order_count:I

.field private review_count:I

.field private review_created_date:J

.field private reviewer:Ljava/lang/String;

.field private reviewer_last_order_from_customer_date:J

.field private sentiment:Ljava/lang/String;

.field private star_rating:I

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->order_count:I

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->review_count:I

    return v0
.end method

.method public getReviewCreatedDate()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->review_created_date:J

    return-wide v0
.end method

.method public getReviewer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->reviewer:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewerLastOrderFromCustomerDate()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->reviewer_last_order_from_customer_date:J

    return-wide v0
.end method

.method public getSentiment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->sentiment:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel$GHSReview;->star_rating:I

    return v0
.end method
