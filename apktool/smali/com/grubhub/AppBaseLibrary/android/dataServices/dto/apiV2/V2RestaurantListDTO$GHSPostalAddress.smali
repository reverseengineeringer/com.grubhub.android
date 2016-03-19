.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address_country:Ljava/lang/String;

.field private address_locality:Ljava/lang/String;

.field private address_region:Ljava/lang/String;

.field private post_office_box_number:Ljava/lang/String;

.field private postal_code:Ljava/lang/String;

.field private street_address:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->street_address:Ljava/lang/String;

    .line 523
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_locality:Ljava/lang/String;

    .line 524
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_country:Ljava/lang/String;

    .line 525
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_region:Ljava/lang/String;

    .line 526
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->postal_code:Ljava/lang/String;

    .line 527
    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->street_address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_locality:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_region:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->postal_code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPostalAddress;->address_country:Ljava/lang/String;

    return-object v0
.end method
