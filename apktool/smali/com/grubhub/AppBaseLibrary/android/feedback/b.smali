.class public final enum Lcom/grubhub/AppBaseLibrary/android/feedback/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/feedback/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field public static final enum RECEIPT:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field public static final enum SEARCH:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field public static final enum SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field public static final enum TRAY:Lcom/grubhub/AppBaseLibrary/android/feedback/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    const-string v1, "TRAY"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->TRAY:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 14
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 15
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    const-string v1, "SEARCH_AFTER_PAST_ORDER"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 16
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    const-string v1, "RECEIPT"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->RECEIPT:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->TRAY:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->RECEIPT:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/feedback/b;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMode(I)Lcom/grubhub/AppBaseLibrary/android/feedback/b;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->values()[Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    move-result-object v0

    .line 26
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 27
    aget-object v0, v0, p0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/feedback/b;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/feedback/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/feedback/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    return-object v0
.end method
