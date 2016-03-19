.class public final enum Lcom/grubhub/AppBaseLibrary/android/utils/c/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/utils/c/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum APP_NAVIGATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum COMMUNICATIONS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum HELP:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum PREPARE:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum THANK_YOU:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

.field public static final enum USER_AUTHENTICATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "PREPARE"

    const-string v2, "prepare"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->PREPARE:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 10
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "RESTAURANT_SEARCH"

    const-string v2, "restaurant search"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 11
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "USER_AUTHENTICATION"

    const-string v2, "user authentication"

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_AUTHENTICATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 12
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "RESTAURANT_DETAILS"

    const-string v2, "restaurant details"

    invoke-direct {v0, v1, v7, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 13
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "ORDER_PROCESSING"

    const-string v2, "order processing"

    invoke-direct {v0, v1, v8, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 14
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "APP_NAVIGATION"

    const/4 v2, 0x5

    const-string v3, "app navigation"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->APP_NAVIGATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 15
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "USER_ACCOUNT_INFO"

    const/4 v2, 0x6

    const-string v3, "user account info"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 16
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "HELP"

    const/4 v2, 0x7

    const-string v3, "help"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->HELP:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 17
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "COMMUNICATIONS"

    const/16 v2, 0x8

    const-string v3, "communications"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->COMMUNICATIONS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 18
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "THANK_YOU"

    const/16 v2, 0x9

    const-string v3, "thank you"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->THANK_YOU:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 19
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v1, "ORDER_STATUS_TRACKING"

    const/16 v2, 0xa

    const-string v3, "order status tracking"

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->PREPARE:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_AUTHENTICATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->APP_NAVIGATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->HELP:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->COMMUNICATIONS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->THANK_YOU:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/utils/c/f;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/utils/c/f;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 28
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->name:Ljava/lang/String;

    return-object v0
.end method
