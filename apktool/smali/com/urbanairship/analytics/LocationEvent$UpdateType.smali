.class public final enum Lcom/urbanairship/analytics/LocationEvent$UpdateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/analytics/LocationEvent$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/analytics/LocationEvent$UpdateType;

.field public static final enum CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

.field public static final enum SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->$VALUES:[Lcom/urbanairship/analytics/LocationEvent$UpdateType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->$VALUES:[Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v0}, [Lcom/urbanairship/analytics/LocationEvent$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    return-object v0
.end method
