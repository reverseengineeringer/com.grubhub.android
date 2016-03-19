.class public final enum Lcom/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/a/e;

.field public static final enum DEVICE_COOKIE:Lcom/a/e;

.field public static final enum ERROR_LIST:Lcom/a/e;

.field public static final enum GEO_DATE:Lcom/a/e;

.field public static final enum GEO_PROVIDER:Lcom/a/e;

.field public static final enum LATITUDE:Lcom/a/e;

.field public static final enum LONGITUDE:Lcom/a/e;

.field public static final enum MERCHANT_ID:Lcom/a/e;

.field public static final enum MOBILE_MODEL:Lcom/a/e;

.field public static final enum OLD_DEVICE_COOKIE:Lcom/a/e;

.field public static final enum OS_VERSION:Lcom/a/e;

.field public static final enum SDK_TYPE:Lcom/a/e;

.field public static final enum SDK_VERSION:Lcom/a/e;

.field public static final enum SESSION_ID:Lcom/a/e;

.field public static final enum USER_COOKIE:Lcom/a/e;


# instance fields
.field private postField:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/a/e;

    const-string v1, "LATITUDE"

    const-string v2, "lat"

    invoke-direct {v0, v1, v4, v2}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->LATITUDE:Lcom/a/e;

    .line 30
    new-instance v0, Lcom/a/e;

    const-string v1, "LONGITUDE"

    const-string v2, "lon"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->LONGITUDE:Lcom/a/e;

    .line 34
    new-instance v0, Lcom/a/e;

    const-string v1, "GEO_DATE"

    const-string v2, "ltm"

    invoke-direct {v0, v1, v6, v2}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->GEO_DATE:Lcom/a/e;

    .line 38
    new-instance v0, Lcom/a/e;

    const-string v1, "GEO_PROVIDER"

    const-string v2, "lpv"

    invoke-direct {v0, v1, v7, v2}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->GEO_PROVIDER:Lcom/a/e;

    .line 42
    new-instance v0, Lcom/a/e;

    const-string v1, "OLD_DEVICE_COOKIE"

    const-string v2, "odc"

    invoke-direct {v0, v1, v8, v2}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->OLD_DEVICE_COOKIE:Lcom/a/e;

    .line 46
    new-instance v0, Lcom/a/e;

    const-string v1, "DEVICE_COOKIE"

    const/4 v2, 0x5

    const-string v3, "dc"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->DEVICE_COOKIE:Lcom/a/e;

    .line 50
    new-instance v0, Lcom/a/e;

    const-string v1, "USER_COOKIE"

    const/4 v2, 0x6

    const-string v3, "uc"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->USER_COOKIE:Lcom/a/e;

    .line 54
    new-instance v0, Lcom/a/e;

    const-string v1, "OS_VERSION"

    const/4 v2, 0x7

    const-string v3, "os"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->OS_VERSION:Lcom/a/e;

    .line 58
    new-instance v0, Lcom/a/e;

    const-string v1, "SDK_VERSION"

    const/16 v2, 0x8

    const-string v3, "sv"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->SDK_VERSION:Lcom/a/e;

    .line 62
    new-instance v0, Lcom/a/e;

    const-string v1, "SDK_TYPE"

    const/16 v2, 0x9

    const-string v3, "st"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->SDK_TYPE:Lcom/a/e;

    .line 66
    new-instance v0, Lcom/a/e;

    const-string v1, "MOBILE_MODEL"

    const/16 v2, 0xa

    const-string v3, "mdl"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->MOBILE_MODEL:Lcom/a/e;

    .line 70
    new-instance v0, Lcom/a/e;

    const-string v1, "ERROR_LIST"

    const/16 v2, 0xb

    const-string v3, "err"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->ERROR_LIST:Lcom/a/e;

    .line 74
    new-instance v0, Lcom/a/e;

    const-string v1, "MERCHANT_ID"

    const/16 v2, 0xc

    const-string v3, "m"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->MERCHANT_ID:Lcom/a/e;

    .line 78
    new-instance v0, Lcom/a/e;

    const-string v1, "SESSION_ID"

    const/16 v2, 0xd

    const-string v3, "s"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/e;->SESSION_ID:Lcom/a/e;

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/a/e;

    sget-object v1, Lcom/a/e;->LATITUDE:Lcom/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/e;->LONGITUDE:Lcom/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/e;->GEO_DATE:Lcom/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/e;->GEO_PROVIDER:Lcom/a/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/a/e;->OLD_DEVICE_COOKIE:Lcom/a/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/a/e;->DEVICE_COOKIE:Lcom/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/e;->USER_COOKIE:Lcom/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/e;->OS_VERSION:Lcom/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/a/e;->SDK_VERSION:Lcom/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/a/e;->SDK_TYPE:Lcom/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/a/e;->MOBILE_MODEL:Lcom/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/a/e;->ERROR_LIST:Lcom/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/a/e;->MERCHANT_ID:Lcom/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/a/e;->SESSION_ID:Lcom/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/e;->$VALUES:[Lcom/a/e;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/a/e;->postField:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/e;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/e;

    return-object v0
.end method

.method public static values()[Lcom/a/e;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/a/e;->$VALUES:[Lcom/a/e;

    invoke-virtual {v0}, [Lcom/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/e;

    return-object v0
.end method


# virtual methods
.method public postField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/a/e;->postField:Ljava/lang/String;

    return-object v0
.end method
