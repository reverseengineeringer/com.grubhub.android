.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum ASSIGNED:Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum CANCELED:Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum COMMITTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum DELIVERED:Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum ESTIMATED:Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum IN_TRANSIT:Lcom/grubhub/AppBaseLibrary/android/order/d;

.field public static final enum REJECTED:Lcom/grubhub/AppBaseLibrary/android/order/d;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "ESTIMATED"

    const-string v2, "ESTIMATED"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->ESTIMATED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 512
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "COMMITTED"

    const-string v2, "COMMITTED"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->COMMITTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 513
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "ASSIGNED"

    const-string v2, "ASSIGNED"

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->ASSIGNED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 514
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "IN_TRANSIT"

    const-string v2, "IN_TRANSIT"

    invoke-direct {v0, v1, v7, v2}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->IN_TRANSIT:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 515
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "DELIVERED"

    const-string v2, "DELIVERED"

    invoke-direct {v0, v1, v8, v2}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->DELIVERED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 516
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    const-string v3, "CANCELED"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->CANCELED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 517
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    const-string v1, "REJECTED"

    const/4 v2, 0x6

    const-string v3, "REJECTED"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->REJECTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    .line 509
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/d;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->ESTIMATED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->COMMITTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->ASSIGNED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->IN_TRANSIT:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->DELIVERED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/d;->CANCELED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/d;->REJECTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/d;

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
    .line 521
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 522
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/d;->value:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/d;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 534
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/d;->values()[Lcom/grubhub/AppBaseLibrary/android/order/d;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 535
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 536
    goto :goto_0

    .line 534
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/d;
    .locals 1

    .prologue
    .line 509
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/d;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/d;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/d;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/d;->value:Ljava/lang/String;

    return-object v0
.end method
