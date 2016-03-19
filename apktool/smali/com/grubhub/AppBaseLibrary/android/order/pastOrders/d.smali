.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

.field public static final enum ORDER_HISTORY:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

.field public static final enum RATE_MORE:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    const-string v1, "ORDER_HISTORY"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->ORDER_HISTORY:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    .line 47
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    const-string v1, "RATE_MORE"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->RATE_MORE:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->ORDER_HISTORY:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->RATE_MORE:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    return-object v0
.end method
