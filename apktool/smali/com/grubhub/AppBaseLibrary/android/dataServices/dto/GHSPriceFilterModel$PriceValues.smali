.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

.field public static final enum FIVE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

.field public static final enum FOUR_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

.field public static final enum ONE_ONLY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

.field public static final enum THREE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

.field public static final enum TWO_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    const-string v1, "ONE_ONLY"

    const-string v2, "1 Only"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->ONE_ONLY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    .line 34
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    const-string v1, "TWO_AND_BELOW"

    const-string v2, "2 And Below"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->TWO_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    .line 35
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    const-string v1, "THREE_AND_BELOW"

    const-string v2, "3 And Below"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->THREE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    const-string v1, "FOUR_AND_BELOW"

    const-string v2, "4 And Below"

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->FOUR_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    .line 37
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    const-string v1, "FIVE_AND_BELOW"

    const-string v2, "5 And Below"

    invoke-direct {v0, v1, v7, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->FIVE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->ONE_ONLY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->TWO_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->THREE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->FOUR_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->FIVE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    aput-object v1, v0, v7

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->stringValue:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 61
    iget-object v5, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->stringValue:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->stringValue:Ljava/lang/String;

    return-object v0
.end method
