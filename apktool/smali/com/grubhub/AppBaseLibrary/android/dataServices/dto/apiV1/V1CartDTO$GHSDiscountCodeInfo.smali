.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/Float;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$1;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->value:Ljava/lang/Float;

    return-object p1
.end method


# virtual methods
.method public getDiscountCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountCodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiscountDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiscountValue()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSDiscountCodeInfo;->value:Ljava/lang/Float;

    return-object v0
.end method

.method public getDiscountValueCents()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method
