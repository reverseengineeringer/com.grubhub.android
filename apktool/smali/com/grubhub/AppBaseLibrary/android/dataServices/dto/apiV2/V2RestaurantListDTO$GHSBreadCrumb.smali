.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crumb_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSCrumb;",
            ">;"
        }
    .end annotation
.end field

.field private current_sort:Ljava/lang/String;

.field private location_mode:Ljava/lang/String;

.field private query_text:Ljava/lang/String;

.field private radius:F

.field private selected_location:Ljava/lang/String;

.field private sort_direction:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;)F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;->radius:F

    return v0
.end method

.method static synthetic access$2700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;->query_text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;->current_sort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSBreadCrumb;->crumb_list:Ljava/util/ArrayList;

    return-object v0
.end method
