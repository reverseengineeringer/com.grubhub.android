.class public final enum Lcom/facebook/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/k;

.field public static final enum LOGIN_RECOVERABLE:Lcom/facebook/k;

.field public static final enum OTHER:Lcom/facebook/k;

.field public static final enum TRANSIENT:Lcom/facebook/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/facebook/k;

    const-string v1, "LOGIN_RECOVERABLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k;->LOGIN_RECOVERABLE:Lcom/facebook/k;

    .line 452
    new-instance v0, Lcom/facebook/k;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k;->OTHER:Lcom/facebook/k;

    .line 457
    new-instance v0, Lcom/facebook/k;

    const-string v1, "TRANSIENT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k;->TRANSIENT:Lcom/facebook/k;

    .line 440
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/k;

    sget-object v1, Lcom/facebook/k;->LOGIN_RECOVERABLE:Lcom/facebook/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/k;->OTHER:Lcom/facebook/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/k;->TRANSIENT:Lcom/facebook/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/k;->$VALUES:[Lcom/facebook/k;

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
    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/k;
    .locals 1

    .prologue
    .line 440
    const-class v0, Lcom/facebook/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    return-object v0
.end method

.method public static values()[Lcom/facebook/k;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lcom/facebook/k;->$VALUES:[Lcom/facebook/k;

    invoke-virtual {v0}, [Lcom/facebook/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/k;

    return-object v0
.end method
