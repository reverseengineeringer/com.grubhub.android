.class public final enum Lcom/taplytics/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taplytics/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic albatross:[Lcom/taplytics/b;

.field public static final enum alligator:Lcom/taplytics/b;

.field public static final enum alpaca:Lcom/taplytics/b;

.field public static final enum anteater:Lcom/taplytics/b;

.field public static final enum antelope:Lcom/taplytics/b;

.field public static final enum ape:Lcom/taplytics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/taplytics/b;

    const-string v1, "EXPERIMENT"

    invoke-direct {v0, v1, v2}, Lcom/taplytics/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    new-instance v0, Lcom/taplytics/b;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v3}, Lcom/taplytics/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/b;->alpaca:Lcom/taplytics/b;

    new-instance v0, Lcom/taplytics/b;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v4}, Lcom/taplytics/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/b;->anteater:Lcom/taplytics/b;

    new-instance v0, Lcom/taplytics/b;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/taplytics/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/b;->antelope:Lcom/taplytics/b;

    new-instance v0, Lcom/taplytics/b;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v6}, Lcom/taplytics/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/b;->ape:Lcom/taplytics/b;

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taplytics/b;

    sget-object v1, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taplytics/b;->alpaca:Lcom/taplytics/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taplytics/b;->anteater:Lcom/taplytics/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taplytics/b;->antelope:Lcom/taplytics/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taplytics/b;->ape:Lcom/taplytics/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taplytics/b;->albatross:[Lcom/taplytics/b;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taplytics/b;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/taplytics/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taplytics/b;

    return-object v0
.end method

.method public static values()[Lcom/taplytics/b;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/taplytics/b;->albatross:[Lcom/taplytics/b;

    invoke-virtual {v0}, [Lcom/taplytics/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taplytics/b;

    return-object v0
.end method
