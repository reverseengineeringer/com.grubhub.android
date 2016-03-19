.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/f;

.field public static final enum BIKE:Lcom/grubhub/AppBaseLibrary/android/order/f;

.field public static final enum CAR:Lcom/grubhub/AppBaseLibrary/android/order/f;

.field public static final enum SCOOTER:Lcom/grubhub/AppBaseLibrary/android/order/f;

.field public static final enum WALKING:Lcom/grubhub/AppBaseLibrary/android/order/f;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 549
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/f;

    const-string v1, "CAR"

    const-string v2, "CAR"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/order/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/f;->CAR:Lcom/grubhub/AppBaseLibrary/android/order/f;

    .line 550
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/f;

    const-string v1, "BIKE"

    const-string v2, "BIKE"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/order/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/f;->BIKE:Lcom/grubhub/AppBaseLibrary/android/order/f;

    .line 551
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/f;

    const-string v1, "WALKING"

    const-string v2, "WALKING"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/order/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/f;->WALKING:Lcom/grubhub/AppBaseLibrary/android/order/f;

    .line 552
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/f;

    const-string v1, "SCOOTER"

    const-string v2, "SCOOTER"

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/order/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/f;->SCOOTER:Lcom/grubhub/AppBaseLibrary/android/order/f;

    .line 547
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->CAR:Lcom/grubhub/AppBaseLibrary/android/order/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->BIKE:Lcom/grubhub/AppBaseLibrary/android/order/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->WALKING:Lcom/grubhub/AppBaseLibrary/android/order/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->SCOOTER:Lcom/grubhub/AppBaseLibrary/android/order/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/f;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/f;

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
    .line 556
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 557
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/f;->value:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/f;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-object v0

    .line 569
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/f;->values()[Lcom/grubhub/AppBaseLibrary/android/order/f;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 570
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 571
    goto :goto_0

    .line 569
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/f;
    .locals 1

    .prologue
    .line 547
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/f;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/f;
    .locals 1

    .prologue
    .line 547
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/f;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/f;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/f;->value:Ljava/lang/String;

    return-object v0
.end method
