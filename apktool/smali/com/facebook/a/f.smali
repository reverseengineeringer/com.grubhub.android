.class public final enum Lcom/facebook/a/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/a/f;

.field public static final enum AUTO:Lcom/facebook/a/f;

.field public static final enum EXPLICIT_ONLY:Lcom/facebook/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Lcom/facebook/a/f;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/f;->AUTO:Lcom/facebook/a/f;

    .line 163
    new-instance v0, Lcom/facebook/a/f;

    const-string v1, "EXPLICIT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/f;->EXPLICIT_ONLY:Lcom/facebook/a/f;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/a/f;

    sget-object v1, Lcom/facebook/a/f;->AUTO:Lcom/facebook/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/a/f;->EXPLICIT_ONLY:Lcom/facebook/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/a/f;->$VALUES:[Lcom/facebook/a/f;

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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/f;
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/facebook/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/f;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/f;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/facebook/a/f;->$VALUES:[Lcom/facebook/a/f;

    invoke-virtual {v0}, [Lcom/facebook/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/f;

    return-object v0
.end method
