.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

.field public static final enum ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

.field public static final enum USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

.field public static final enum USER_WHEN_LOGGED_IN:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    .line 100
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    const-string v1, "USER_WHEN_LOGGED_IN"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER_WHEN_LOGGED_IN:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    .line 101
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    const-string v1, "ANONYMOUS_USER"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER_WHEN_LOGGED_IN:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    return-object v0
.end method
