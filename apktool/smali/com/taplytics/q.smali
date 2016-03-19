.class public final enum Lcom/taplytics/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taplytics/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum albatross:Lcom/taplytics/q;

.field private static final synthetic albatross:[Lcom/taplytics/q;

.field public static final enum alligator:Lcom/taplytics/q;

.field public static final enum alpaca:Lcom/taplytics/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/taplytics/q;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lcom/taplytics/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/q;->albatross:Lcom/taplytics/q;

    .line 39
    new-instance v0, Lcom/taplytics/q;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lcom/taplytics/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/q;->alligator:Lcom/taplytics/q;

    .line 41
    new-instance v0, Lcom/taplytics/q;

    const-string v1, "RFC6532"

    invoke-direct {v0, v1, v4}, Lcom/taplytics/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/q;->alpaca:Lcom/taplytics/q;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taplytics/q;

    sget-object v1, Lcom/taplytics/q;->albatross:Lcom/taplytics/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taplytics/q;->alligator:Lcom/taplytics/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taplytics/q;->alpaca:Lcom/taplytics/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taplytics/q;->albatross:[Lcom/taplytics/q;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taplytics/q;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/taplytics/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taplytics/q;

    return-object v0
.end method

.method public static values()[Lcom/taplytics/q;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/taplytics/q;->albatross:[Lcom/taplytics/q;

    invoke-virtual {v0}, [Lcom/taplytics/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taplytics/q;

    return-object v0
.end method
