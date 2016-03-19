.class public final enum Lcom/flurry/sdk/ja$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ja$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ja$a;

.field public static final enum b:Lcom/flurry/sdk/ja$a;

.field public static final enum c:Lcom/flurry/sdk/ja$a;

.field public static final enum d:Lcom/flurry/sdk/ja$a;

.field public static final enum e:Lcom/flurry/sdk/ja$a;

.field private static final synthetic f:[Lcom/flurry/sdk/ja$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/flurry/sdk/ja$a;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ja$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ja$a;->a:Lcom/flurry/sdk/ja$a;

    new-instance v0, Lcom/flurry/sdk/ja$a;

    const-string v1, "SESSION_ID_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/ja$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ja$a;->b:Lcom/flurry/sdk/ja$a;

    new-instance v0, Lcom/flurry/sdk/ja$a;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/ja$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ja$a;->c:Lcom/flurry/sdk/ja$a;

    new-instance v0, Lcom/flurry/sdk/ja$a;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/ja$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ja$a;->d:Lcom/flurry/sdk/ja$a;

    new-instance v0, Lcom/flurry/sdk/ja$a;

    const-string v1, "END"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/ja$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ja$a;->e:Lcom/flurry/sdk/ja$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/ja$a;

    sget-object v1, Lcom/flurry/sdk/ja$a;->a:Lcom/flurry/sdk/ja$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ja$a;->b:Lcom/flurry/sdk/ja$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ja$a;->c:Lcom/flurry/sdk/ja$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ja$a;->d:Lcom/flurry/sdk/ja$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ja$a;->e:Lcom/flurry/sdk/ja$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/ja$a;->f:[Lcom/flurry/sdk/ja$a;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ja$a;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/ja$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ja$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/sdk/ja$a;->f:[Lcom/flurry/sdk/ja$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ja$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ja$a;

    return-object v0
.end method
