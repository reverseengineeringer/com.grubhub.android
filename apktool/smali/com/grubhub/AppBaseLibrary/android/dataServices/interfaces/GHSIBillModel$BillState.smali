.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

.field public static final enum INVALID:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

.field public static final enum READY_FOR_CHECKOUT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;


# instance fields
.field private rawState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    const-string v1, "READY_FOR_CHECKOUT"

    const-string v2, "READY_FOR_CHECKOUT"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->READY_FOR_CHECKOUT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    .line 15
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    const-string v1, "INVALID"

    const-string v2, "INVALID"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->INVALID:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->READY_FOR_CHECKOUT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->INVALID:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->rawState:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 32
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 33
    goto :goto_0

    .line 31
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;->rawState:Ljava/lang/String;

    return-object v0
.end method
