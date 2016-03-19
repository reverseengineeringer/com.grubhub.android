.class final enum Lcom/a/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/a/a/e;

.field public static final enum ANDROID_ID:Lcom/a/a/e;

.field public static final enum ANDROID_SERIAL:Lcom/a/a/e;

.field public static final enum MAC_HASH:Lcom/a/a/e;

.field public static final enum UID:Lcom/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/a/a/e;

    const-string v1, "ANDROID_ID"

    invoke-direct {v0, v1, v2}, Lcom/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/e;->ANDROID_ID:Lcom/a/a/e;

    .line 60
    new-instance v0, Lcom/a/a/e;

    const-string v1, "ANDROID_SERIAL"

    invoke-direct {v0, v1, v3}, Lcom/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/e;->ANDROID_SERIAL:Lcom/a/a/e;

    .line 64
    new-instance v0, Lcom/a/a/e;

    const-string v1, "MAC_HASH"

    invoke-direct {v0, v1, v4}, Lcom/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/e;->MAC_HASH:Lcom/a/a/e;

    .line 68
    new-instance v0, Lcom/a/a/e;

    const-string v1, "UID"

    invoke-direct {v0, v1, v5}, Lcom/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/e;->UID:Lcom/a/a/e;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/a/e;

    sget-object v1, Lcom/a/a/e;->ANDROID_ID:Lcom/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/e;->ANDROID_SERIAL:Lcom/a/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/e;->MAC_HASH:Lcom/a/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/e;->UID:Lcom/a/a/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/e;->$VALUES:[Lcom/a/a/e;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/a/a/e;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/a/a/e;->$VALUES:[Lcom/a/a/e;

    invoke-virtual {v0}, [Lcom/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/e;

    return-object v0
.end method
