.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRecommendationsModel$GHSIRecommendedRestaurant$GHSIRecommendedRestaurantAddress;


# instance fields
.field private address_country:Ljava/lang/String;

.field private address_locality:Ljava/lang/String;

.field private address_region:Ljava/lang/String;

.field private postal_code:Ljava/lang/String;

.field private street_address:Ljava/lang/String;

.field final synthetic this$1:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;->this$1:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;->address_country:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;->address_locality:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;->address_region:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;->postal_code:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress;->street_address:Ljava/lang/String;

    return-object v0
.end method
