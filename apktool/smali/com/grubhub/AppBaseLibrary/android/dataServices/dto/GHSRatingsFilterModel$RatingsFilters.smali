.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

.field public static final enum RATINGS_FIVE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

.field public static final enum RATINGS_FOUR_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

.field public static final enum RATINGS_NONE_SELECTED:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

.field public static final enum RATINGS_ONE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

.field public static final enum RATINGS_THREE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

.field public static final enum RATINGS_TWO_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    const-string v1, "RATINGS_NONE_SELECTED"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_NONE_SELECTED:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    .line 22
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    const-string v1, "RATINGS_ONE_FILTER"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_ONE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    .line 23
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    const-string v1, "RATINGS_TWO_FILTER"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_TWO_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    .line 24
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    const-string v1, "RATINGS_THREE_FILTER"

    invoke-direct {v0, v1, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_THREE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    .line 25
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    const-string v1, "RATINGS_FOUR_FILTER"

    invoke-direct {v0, v1, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_FOUR_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    .line 26
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    const-string v1, "RATINGS_FIVE_FILTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_FIVE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_NONE_SELECTED:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_ONE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_TWO_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_THREE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_FOUR_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->RATINGS_FIVE_FILTER:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    aput-object v2, v0, v1

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    return-object v0
.end method
