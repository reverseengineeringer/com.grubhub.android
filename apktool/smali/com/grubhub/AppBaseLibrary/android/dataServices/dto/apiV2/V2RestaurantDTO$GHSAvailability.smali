.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private available_for_delivery:Z

.field private available_hours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private available_hours_pickup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private blacked_out:Z

.field private cash_accepted:Z

.field private credit_card_accepted:Z

.field private cutoff_for_delivery:Z

.field private cutoff_for_pickup:Z

.field private delivery_cutoff:Ljava/lang/Integer;

.field private delivery_estimate:Ljava/lang/Integer;

.field private delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private delivery_fee_as_percentage:Ljava/lang/Float;

.field private delivery_fee_estimate:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private delivery_fee_taxable:Z

.field private delivery_offered_to_diner_location:Z

.field private distance_in_miles:Ljava/lang/Integer;

.field private future_order_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;

.field private open:Z

.field private order_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private paypal_accepted:Z

.field private pickup_cutoff:Ljava/lang/Integer;

.field private pickup_estimate:Ljava/lang/Integer;

.field private restaurant_id:Ljava/lang/String;

.field private sales_tax:Ljava/lang/Float;

.field private time_zone_id:Ljava/lang/String;

.field private time_zone_offset:Ljava/lang/Integer;

.field private tracker:Z

.field private white_in:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->available_hours_pickup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->available_hours:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->future_order_info:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSFutureOrderInfo;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->open:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->pickup_cutoff:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->white_in:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->delivery_cutoff:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->cash_accepted:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->credit_card_accepted:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->distance_in_miles:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->available_for_delivery:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->delivery_offered_to_diner_location:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->delivery_fee:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->delivery_fee_estimate:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->order_minimum:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->delivery_estimate:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSAvailability;->pickup_estimate:Ljava/lang/Integer;

    return-object v0
.end method
