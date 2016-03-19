.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSSortPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SORT_POSITION_TYPE_AGE:Ljava/lang/String; = "AGE"

.field public static final SORT_POSITION_TYPE_DEFAULT_NEW:Ljava/lang/String; = "DEFAULT_NEW"

.field public static final SORT_POSITION_TYPE_DELIVERY_FEE:Ljava/lang/String; = "DELIVERY_FEE"

.field public static final SORT_POSITION_TYPE_DISTANCE:Ljava/lang/String; = "DISTANCE"

.field public static final SORT_POSITION_TYPE_STAR_RATING:Ljava/lang/String; = "STAR_RATING"


# instance fields
.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/Float;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSSortPosition;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
