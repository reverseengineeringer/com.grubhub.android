.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/i;

.field public static final enum ADD_ITEM:Lcom/grubhub/AppBaseLibrary/android/order/i;

.field public static final enum ORDER:Lcom/grubhub/AppBaseLibrary/android/order/i;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/i;

    const-string v1, "ADD_ITEM"

    const-string v2, "ADD_ITEM"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/order/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/i;->ADD_ITEM:Lcom/grubhub/AppBaseLibrary/android/order/i;

    .line 70
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/i;

    const-string v1, "ORDER"

    const-string v2, "ORDER"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/order/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/i;->ORDER:Lcom/grubhub/AppBaseLibrary/android/order/i;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/i;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/i;->ADD_ITEM:Lcom/grubhub/AppBaseLibrary/android/order/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/i;->ORDER:Lcom/grubhub/AppBaseLibrary/android/order/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/i;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/i;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/i;->stringValue:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/i;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/i;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/i;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/i;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/i;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/i;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/i;->stringValue:Ljava/lang/String;

    return-object v0
.end method
