.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/cart/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/cart/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field public static final enum TIP_BUTTON_1:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field public static final enum TIP_BUTTON_2:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field public static final enum TIP_BUTTON_3:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field public static final enum TIP_BUTTON_CASH:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field public static final enum TIP_BUTTON_CUSTOM:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    const-string v1, "TIP_BUTTON_CASH"

    const v2, 0x7f0f028a

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_CASH:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 111
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    const-string v1, "TIP_BUTTON_1"

    const v2, 0x7f0f028b

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_1:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 112
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    const-string v1, "TIP_BUTTON_2"

    const v2, 0x7f0f028c

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_2:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 113
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    const-string v1, "TIP_BUTTON_3"

    const v2, 0x7f0f028d

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_3:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 114
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    const-string v1, "TIP_BUTTON_CUSTOM"

    const v2, 0x7f0f028e

    invoke-direct {v0, v1, v7, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_CUSTOM:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_CASH:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_1:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_2:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_3:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_CUSTOM:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    aput-object v1, v0, v7

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->id:I

    .line 120
    return-void
.end method

.method public static fromInt(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/n;
    .locals 5

    .prologue
    .line 127
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->values()[Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 128
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->toInt()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 132
    :goto_1
    return-object v0

    .line 127
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/cart/n;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/cart/n;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->id:I

    return v0
.end method
