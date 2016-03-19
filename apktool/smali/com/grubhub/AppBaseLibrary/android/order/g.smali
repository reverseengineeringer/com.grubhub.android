.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/g;

.field public static final enum DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field public static final enum DELIVERY_OR_PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field public static final enum PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    const-string v1, "DELIVERY"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 11
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    const-string v1, "PICKUP"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 12
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    const-string v1, "DELIVERY_OR_PICKUP"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/order/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY_OR_PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY_OR_PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/g;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g$1;->a:[I

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    const-string v0, "DELIVERY"

    goto :goto_0

    .line 20
    :pswitch_1
    const-string v0, "PICKUP"

    goto :goto_0

    .line 22
    :pswitch_2
    const-string v0, "DELIVERY_OR_PICKUP"

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
