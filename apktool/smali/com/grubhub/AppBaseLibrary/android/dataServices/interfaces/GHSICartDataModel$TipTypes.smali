.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

.field public static final enum CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

.field public static final enum INCLUDE_IN_BILL:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;


# instance fields
.field private rawPaymentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    const-string v1, "CASH"

    const-string v2, "CASH"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    .line 61
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    const-string v1, "INCLUDE_IN_BILL"

    const-string v2, "INCLUDE_IN_BILL"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->INCLUDE_IN_BILL:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->INCLUDE_IN_BILL:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->rawPaymentType:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 79
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->rawPaymentType:Ljava/lang/String;

    return-object v0
.end method
