.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/cart/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/cart/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

.field public static final enum CANCEL:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

.field public static final enum CREATE_NEW:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

.field public static final enum KEEP:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

.field public static final enum UPDATE:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    const-string v1, "CREATE_NEW"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->CREATE_NEW:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    .line 70
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    const-string v1, "KEEP"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->KEEP:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    .line 71
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->UPDATE:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    .line 72
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->CANCEL:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->CREATE_NEW:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->KEEP:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->UPDATE:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->CANCEL:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/cart/p;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/cart/p;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    return-object v0
.end method
