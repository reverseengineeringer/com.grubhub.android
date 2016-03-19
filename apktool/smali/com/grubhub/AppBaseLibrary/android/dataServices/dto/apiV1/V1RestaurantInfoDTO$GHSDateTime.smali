.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;


# static fields
.field private static final mapDOWToString:[Ljava/lang/String;


# instance fields
.field private day_of_week:Ljava/lang/Integer;

.field private time_ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->time_ranges:Ljava/util/ArrayList;

    .line 91
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->day_of_week:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->time_ranges:Ljava/util/ArrayList;

    .line 74
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->day_of_week:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->time_ranges:Ljava/util/ArrayList;

    .line 80
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 81
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->day_of_week:Ljava/lang/Integer;

    .line 86
    :cond_1
    return-void

    .line 80
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->day_of_week:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDayOfWeekString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->day_of_week:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->mapDOWToString:[Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->day_of_week:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimeRanges()Ljava/util/ArrayList;
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
    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO$GHSDateTime;->time_ranges:Ljava/util/ArrayList;

    return-object v0
.end method
