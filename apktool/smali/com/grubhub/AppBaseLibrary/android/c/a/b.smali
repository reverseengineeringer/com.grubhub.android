.class public final enum Lcom/grubhub/AppBaseLibrary/android/c/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/c/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum COUPONS:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum DELIVERY_OFFERED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum NEW_RESTAURANT:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum ONLINE_ORDERING_AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum OPEN_NOW:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum ORDER_TRACKING_ENABLED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

.field public static final enum RADIUS:Lcom/grubhub/AppBaseLibrary/android/c/a/b;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "DELIVERY_OFFERED"

    const-string v2, "delivery_offered"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->DELIVERY_OFFERED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 14
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "ONLINE_ORDERING_AVAILABLE"

    const-string v2, "online_ordering_available"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->ONLINE_ORDERING_AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 15
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "COUPONS"

    const-string v2, "coupons"

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->COUPONS:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 16
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "ORDER_TRACKING_ENABLED"

    const-string v2, "order_tracking_enabled"

    invoke-direct {v0, v1, v7, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->ORDER_TRACKING_ENABLED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 17
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "NEW_RESTAURANT"

    const-string v2, "new_restaurant"

    invoke-direct {v0, v1, v8, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->NEW_RESTAURANT:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 18
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "OPEN_NOW"

    const/4 v2, 0x5

    const-string v3, "open_now"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->OPEN_NOW:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 19
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    const-string v1, "RADIUS"

    const/4 v2, 0x6

    const-string v3, "radius"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->RADIUS:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->DELIVERY_OFFERED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->ONLINE_ORDERING_AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->COUPONS:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->ORDER_TRACKING_ENABLED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->NEW_RESTAURANT:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->OPEN_NOW:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->RADIUS:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/c/a/b;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->stringValue:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/c/a/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->values()[Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 43
    iget-object v5, v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->stringValue:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 44
    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/c/a/b;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/c/a/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/c/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->stringValue:Ljava/lang/String;

    return-object v0
.end method
