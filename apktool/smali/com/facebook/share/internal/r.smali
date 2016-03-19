.class public final enum Lcom/facebook/share/internal/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/internal/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/r;

.field public static final enum BOTTOM:Lcom/facebook/share/internal/r;

.field public static final enum LEFT:Lcom/facebook/share/internal/r;

.field public static final enum RIGHT:Lcom/facebook/share/internal/r;

.field public static final enum TOP:Lcom/facebook/share/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/facebook/share/internal/r;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/internal/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/internal/r;->LEFT:Lcom/facebook/share/internal/r;

    .line 41
    new-instance v0, Lcom/facebook/share/internal/r;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/internal/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/internal/r;->TOP:Lcom/facebook/share/internal/r;

    .line 42
    new-instance v0, Lcom/facebook/share/internal/r;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/share/internal/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/internal/r;->RIGHT:Lcom/facebook/share/internal/r;

    .line 43
    new-instance v0, Lcom/facebook/share/internal/r;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/facebook/share/internal/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/internal/r;->BOTTOM:Lcom/facebook/share/internal/r;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/share/internal/r;

    sget-object v1, Lcom/facebook/share/internal/r;->LEFT:Lcom/facebook/share/internal/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/internal/r;->TOP:Lcom/facebook/share/internal/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/internal/r;->RIGHT:Lcom/facebook/share/internal/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/internal/r;->BOTTOM:Lcom/facebook/share/internal/r;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/internal/r;->$VALUES:[Lcom/facebook/share/internal/r;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/r;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/share/internal/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/r;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/r;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/share/internal/r;->$VALUES:[Lcom/facebook/share/internal/r;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/r;

    return-object v0
.end method
