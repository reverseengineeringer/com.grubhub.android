.class public final enum Lcom/facebook/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/e;

.field public static final enum CLIENT_TOKEN:Lcom/facebook/e;

.field public static final enum FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/e;

.field public static final enum FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/e;

.field public static final enum FACEBOOK_APPLICATION_WEB:Lcom/facebook/e;

.field public static final enum NONE:Lcom/facebook/e;

.field public static final enum TEST_USER:Lcom/facebook/e;

.field public static final enum WEB_VIEW:Lcom/facebook/e;


# instance fields
.field private final canExtendToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 30
    new-instance v0, Lcom/facebook/e;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->NONE:Lcom/facebook/e;

    .line 35
    new-instance v0, Lcom/facebook/e;

    const-string v1, "FACEBOOK_APPLICATION_WEB"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/e;

    .line 40
    new-instance v0, Lcom/facebook/e;

    const-string v1, "FACEBOOK_APPLICATION_NATIVE"

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/e;

    .line 46
    new-instance v0, Lcom/facebook/e;

    const-string v1, "FACEBOOK_APPLICATION_SERVICE"

    invoke-direct {v0, v1, v6, v3}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/e;

    .line 51
    new-instance v0, Lcom/facebook/e;

    const-string v1, "WEB_VIEW"

    invoke-direct {v0, v1, v7, v4}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->WEB_VIEW:Lcom/facebook/e;

    .line 56
    new-instance v0, Lcom/facebook/e;

    const-string v1, "TEST_USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->TEST_USER:Lcom/facebook/e;

    .line 60
    new-instance v0, Lcom/facebook/e;

    const-string v1, "CLIENT_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/e;->CLIENT_TOKEN:Lcom/facebook/e;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/e;

    sget-object v1, Lcom/facebook/e;->NONE:Lcom/facebook/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/e;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/e;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/e;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/e;->WEB_VIEW:Lcom/facebook/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/e;->TEST_USER:Lcom/facebook/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/e;->CLIENT_TOKEN:Lcom/facebook/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/e;->$VALUES:[Lcom/facebook/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-boolean p3, p0, Lcom/facebook/e;->canExtendToken:Z

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/e;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/e;

    return-object v0
.end method

.method public static values()[Lcom/facebook/e;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/e;->$VALUES:[Lcom/facebook/e;

    invoke-virtual {v0}, [Lcom/facebook/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/e;

    return-object v0
.end method


# virtual methods
.method canExtendToken()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/facebook/e;->canExtendToken:Z

    return v0
.end method
