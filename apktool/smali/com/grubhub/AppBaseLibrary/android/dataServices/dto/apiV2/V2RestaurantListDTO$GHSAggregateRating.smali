.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private rating_count:I

.field private rating_value:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_count:I

    .line 509
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_value:Ljava/lang/String;

    .line 510
    return-void
.end method

.method static synthetic access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;)I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSAggregateRating;->rating_count:I

    return v0
.end method
