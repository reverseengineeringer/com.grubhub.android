.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRecommendationsModel$GHSIRecommendedRestaurant;


# instance fields
.field private address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;

.field private bayesian_rating10_point:Ljava/lang/Double;

.field private cuisines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private delivery_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private delivery_time_estimate:Ljava/lang/Integer;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pickup_time_estimate:Ljava/lang/Integer;

.field private price_rating:Ljava/lang/Integer;

.field private rating:Ljava/lang/Double;

.field private rating_count:Ljava/lang/Integer;

.field private restaurant_cdn_url:Ljava/lang/String;

.field private restaurant_id:Ljava/lang/String;

.field private restaurant_score:Ljava/lang/Double;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO;

.field private user_id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRecommendationsModel$GHSIRecommendedRestaurant$GHSIRecommendedRestaurantAddress;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;

    return-object v0
.end method

.method public getBayesianRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->bayesian_rating10_point:Ljava/lang/Double;

    return-object v0
.end method

.method public getCuisines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->cuisines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeliveryFee()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    return-object v0
.end method

.method public getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->delivery_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    return-object v0
.end method

.method public getDeliveryTimeEstimate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->delivery_time_estimate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPickupTimeEstimate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->pickup_time_estimate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPriceRating()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->price_rating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->rating:Ljava/lang/Double;

    return-object v0
.end method

.method public getRatingCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->rating_count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->restaurant_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->restaurant_cdn_url:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantScore()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->restaurant_score:Ljava/lang/Double;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;->user_id:Ljava/lang/String;

    return-object v0
.end method
