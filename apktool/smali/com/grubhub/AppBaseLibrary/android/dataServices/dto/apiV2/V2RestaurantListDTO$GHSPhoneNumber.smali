.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private country_code:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->phone_number:Ljava/lang/String;

    .line 556
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->country_code:Ljava/lang/String;

    .line 557
    return-void
.end method

.method static synthetic access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSPhoneNumber;->phone_number:Ljava/lang/String;

    return-object v0
.end method
