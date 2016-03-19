.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:Ljava/lang/Integer;

.field private drill_down:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetDrillDownLinks;

.field private link_fragment:Ljava/lang/String;

.field private range:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValueRange;

.field private selected:Z

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetDrillDownLinks;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;->drill_down:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetDrillDownLinks;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;->link_fragment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;)Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSFacetValue;->selected:Z

    return v0
.end method
