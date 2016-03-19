.class final enum Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/cart/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

.field public static final enum DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

.field public static final enum INVALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

.field public static final enum NO_BALANCE:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

.field public static final enum VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1748
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 1749
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 1750
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->INVALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 1751
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    const-string v1, "NO_BALANCE"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->NO_BALANCE:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 1747
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->INVALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->NO_BALANCE:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

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
    .line 1747
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
    .locals 1

    .prologue
    .line 1747
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->getState(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    move-result-object v0

    return-object v0
.end method

.method private static getState(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
    .locals 1

    .prologue
    .line 1760
    packed-switch p0, :pswitch_data_0

    .line 1769
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    :goto_0
    return-object v0

    .line 1762
    :pswitch_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    goto :goto_0

    .line 1764
    :pswitch_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->INVALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    goto :goto_0

    .line 1766
    :pswitch_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->NO_BALANCE:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    goto :goto_0

    .line 1760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
    .locals 1

    .prologue
    .line 1747
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
    .locals 1

    .prologue
    .line 1747
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    return-object v0
.end method
