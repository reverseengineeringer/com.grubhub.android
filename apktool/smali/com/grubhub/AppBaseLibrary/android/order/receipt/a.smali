.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

.field public static final enum LAUNCHED_BY_CART:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

.field public static final enum LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

.field public static final enum LAUNCHED_BY_MODIFYING_PLACED_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

.field public static final enum LAUNCHED_BY_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    const-string v1, "LAUNCHED_BY_CART"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_CART:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    const-string v1, "LAUNCHED_BY_FUTURE_ORDER"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 37
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    const-string v1, "LAUNCHED_BY_ORDER_STATUS"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 38
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    const-string v1, "LAUNCHED_BY_MODIFYING_PLACED_ORDER"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_MODIFYING_PLACED_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_CART:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_MODIFYING_PLACED_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    return-object v0
.end method
