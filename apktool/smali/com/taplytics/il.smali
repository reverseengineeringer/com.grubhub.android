.class public final enum Lcom/taplytics/il;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taplytics/il;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic albatross:[Lcom/taplytics/il;

.field public static final enum alligator:Lcom/taplytics/il;

.field public static final enum alpaca:Lcom/taplytics/il;

.field public static final enum anteater:Lcom/taplytics/il;

.field public static final enum antelope:Lcom/taplytics/il;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/taplytics/il;

    const-string v1, "TLDEV"

    invoke-direct {v0, v1, v2}, Lcom/taplytics/il;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/il;->alligator:Lcom/taplytics/il;

    new-instance v0, Lcom/taplytics/il;

    const-string v1, "TLPRODUCTION"

    invoke-direct {v0, v1, v3}, Lcom/taplytics/il;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/il;->alpaca:Lcom/taplytics/il;

    new-instance v0, Lcom/taplytics/il;

    const-string v1, "TLSTAGING"

    invoke-direct {v0, v1, v4}, Lcom/taplytics/il;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/il;->anteater:Lcom/taplytics/il;

    new-instance v0, Lcom/taplytics/il;

    const-string v1, "TLLOCALHOST"

    invoke-direct {v0, v1, v5}, Lcom/taplytics/il;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/il;->antelope:Lcom/taplytics/il;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taplytics/il;

    sget-object v1, Lcom/taplytics/il;->alligator:Lcom/taplytics/il;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taplytics/il;->alpaca:Lcom/taplytics/il;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taplytics/il;->anteater:Lcom/taplytics/il;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taplytics/il;->antelope:Lcom/taplytics/il;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taplytics/il;->albatross:[Lcom/taplytics/il;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taplytics/il;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/taplytics/il;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taplytics/il;

    return-object v0
.end method

.method public static values()[Lcom/taplytics/il;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/taplytics/il;->albatross:[Lcom/taplytics/il;

    invoke-virtual {v0}, [Lcom/taplytics/il;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taplytics/il;

    return-object v0
.end method
