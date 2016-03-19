.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GHSAVAILABILITY_MESSAGE_DELIVERY_AND_PICKUP:Ljava/lang/String; = "Delivery and Pickup"


# instance fields
.field private message:Ljava/lang/String;

.field private onlineCash:Z

.field private onlineCredit:Z

.field private open:Z

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->open:Z

    return v0
.end method

.method static synthetic access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->onlineCash:Z

    return v0
.end method

.method static synthetic access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;)Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->onlineCredit:Z

    return v0
.end method


# virtual methods
.method public getAvailabilityMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO$GHSAvailability;->open:Z

    return v0
.end method
