.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private active:Z

.field private availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;)Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->active:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->getTimePeriodId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAvailability()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;

    return-object v0
.end method

.method private getTimePeriodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->id:Ljava/lang/String;

    return-object v0
.end method

.method private getTimePeriodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->name:Ljava/lang/String;

    return-object v0
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->active:Z

    return v0
.end method
