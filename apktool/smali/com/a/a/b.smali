.class public final enum Lcom/a/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/a/a/b;

.field public static final enum DEVICE_COOKIE:Lcom/a/a/b;

.field public static final enum GEO_LOCATION:Lcom/a/a/b;

.field public static final enum MAC_ADDRESS:Lcom/a/a/b;

.field public static final enum USER_COOKIE:Lcom/a/a/b;

.field public static final enum WEB:Lcom/a/a/b;


# instance fields
.field private postValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/a/a/b;

    const-string v1, "MAC_ADDRESS"

    const-string v2, "collector_mac_addrs"

    invoke-direct {v0, v1, v3, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/b;->MAC_ADDRESS:Lcom/a/a/b;

    .line 31
    new-instance v0, Lcom/a/a/b;

    const-string v1, "WEB"

    const-string v2, "collector_web"

    invoke-direct {v0, v1, v4, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/b;->WEB:Lcom/a/a/b;

    .line 36
    new-instance v0, Lcom/a/a/b;

    const-string v1, "DEVICE_COOKIE"

    const-string v2, "collector_device_cookie"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/b;->DEVICE_COOKIE:Lcom/a/a/b;

    .line 41
    new-instance v0, Lcom/a/a/b;

    const-string v1, "USER_COOKIE"

    const-string v2, "collector_user_cookie"

    invoke-direct {v0, v1, v6, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/b;->USER_COOKIE:Lcom/a/a/b;

    .line 46
    new-instance v0, Lcom/a/a/b;

    const-string v1, "GEO_LOCATION"

    const-string v2, "collector_geo_loc"

    invoke-direct {v0, v1, v7, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/b;->GEO_LOCATION:Lcom/a/a/b;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/b;

    sget-object v1, Lcom/a/a/b;->MAC_ADDRESS:Lcom/a/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b;->WEB:Lcom/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/b;->DEVICE_COOKIE:Lcom/a/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/b;->USER_COOKIE:Lcom/a/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/b;->GEO_LOCATION:Lcom/a/a/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/a/a/b;->$VALUES:[Lcom/a/a/b;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/a/a/b;->postValue:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/a/a/b;->$VALUES:[Lcom/a/a/b;

    invoke-virtual {v0}, [Lcom/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b;

    return-object v0
.end method


# virtual methods
.method public postValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/a/a/b;->postValue:Ljava/lang/String;

    return-object v0
.end method
