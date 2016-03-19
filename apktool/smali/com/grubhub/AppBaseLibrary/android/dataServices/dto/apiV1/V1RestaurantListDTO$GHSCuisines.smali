.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cuisine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getCuisineList()Ljava/util/ArrayList;
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
    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSCuisines;->cuisine:Ljava/util/ArrayList;

    return-object v0
.end method
