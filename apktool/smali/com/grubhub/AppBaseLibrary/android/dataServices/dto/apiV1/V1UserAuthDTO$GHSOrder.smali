.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private completeOrderTime:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private needsReview:Z

.field private orderMethod:Ljava/lang/String;

.field private restaurant:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSRestaurant;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrder;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
