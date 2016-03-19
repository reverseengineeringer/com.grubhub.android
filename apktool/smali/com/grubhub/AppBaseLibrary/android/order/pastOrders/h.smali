.class final enum Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

.field public static final enum PAST_ORDER_DESTINATION_ADD_TO_BAG:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

.field public static final enum PAST_ORDER_DESTINATION_RESTAURANT_MENU:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    const-string v1, "PAST_ORDER_DESTINATION_RESTAURANT_MENU"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->PAST_ORDER_DESTINATION_RESTAURANT_MENU:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    .line 78
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    const-string v1, "PAST_ORDER_DESTINATION_ADD_TO_BAG"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->PAST_ORDER_DESTINATION_ADD_TO_BAG:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->PAST_ORDER_DESTINATION_RESTAURANT_MENU:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->PAST_ORDER_DESTINATION_ADD_TO_BAG:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/h;

    return-object v0
.end method
