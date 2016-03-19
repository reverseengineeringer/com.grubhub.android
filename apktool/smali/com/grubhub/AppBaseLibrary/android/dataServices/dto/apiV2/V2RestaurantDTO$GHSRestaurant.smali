.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSPostalAddress;

.field private cash_tip_allowed:Z

.field private city_id:J

.field private cross_street_required:Z

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

.field private event:Ljava/lang/String;

.field private has_coupons:Z

.field private id:Ljava/lang/String;

.field private is_new:Z

.field private is_olo:Z

.field private latitude:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private managed_delivery:Z

.field private media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

.field private menu_category_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;",
            ">;"
        }
    .end annotation
.end field

.field private minimum_tip:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private minimum_tip_percent:D

.field private name:Ljava/lang/String;

.field private online_ordering_available:Z

.field private phone_number_for_delivery:Ljava/lang/String;

.field private phone_ordering_available:Z

.field private pickup_offered:Z

.field private premium:Z

.field private price_rating:Ljava/lang/String;

.field private rating:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRating;

.field private restaurant_cdn_image_url:Ljava/lang/String;

.field private restaurant_coupons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurantCoupons;",
            ">;"
        }
    .end annotation
.end field

.field private routing_number:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->phone_number_for_delivery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->cross_street_required:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRating;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->rating:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRating;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->price_rating:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->restaurant_cdn_image_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->cuisines:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->logo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->media_image:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MediaImageDTO;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->is_new:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->has_coupons:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->online_ordering_available:Z

    return v0
.end method

.method static synthetic access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSPostalAddress;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSPostalAddress;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->phone_ordering_available:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->cash_tip_allowed:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->managed_delivery:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->minimum_tip_percent:D

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->minimum_tip:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->pickup_offered:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->restaurant_coupons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->menu_category_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSRestaurant;->latitude:Ljava/lang/String;

    return-object v0
.end method
