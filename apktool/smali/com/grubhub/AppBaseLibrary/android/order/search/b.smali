.class final enum Lcom/grubhub/AppBaseLibrary/android/order/search/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/search/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/search/b;

.field public static final enum AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

.field public static final enum AVAILABLE_DESCRIPTION:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

.field public static final enum CATEGORY:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

.field public static final enum NOT_AVAILABLE_YET:Lcom/grubhub/AppBaseLibrary/android/order/search/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    const-string v1, "CATEGORY"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->CATEGORY:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    .line 57
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    .line 58
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    const-string v1, "AVAILABLE_DESCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE_DESCRIPTION:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    .line 59
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    const-string v1, "NOT_AVAILABLE_YET"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->NOT_AVAILABLE_YET:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->CATEGORY:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE_DESCRIPTION:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->NOT_AVAILABLE_YET:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/search/b;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/b;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/search/b;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/search/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    return-object v0
.end method
