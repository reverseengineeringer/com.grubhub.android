.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private highlighting_off:Ljava/lang/String;

.field private highlighting_on:Ljava/lang/String;

.field private page_size:Ljava/lang/Integer;

.field private result_count:Ljava/lang/Integer;

.field private result_set_link:Ljava/lang/String;

.field private total_results:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSStats;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSStats;->total_results:Ljava/lang/Long;

    return-object v0
.end method
