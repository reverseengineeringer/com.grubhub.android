.class public final enum Lcom/taplytics/dd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taplytics/dd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum albatross:Lcom/taplytics/dd;

.field private static final synthetic albatross:[Lcom/taplytics/dd;

.field public static final enum alligator:Lcom/taplytics/dd;


# instance fields
.field private final antelope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/taplytics/dd;

    const-string v1, "EVENTS"

    const-string v2, "events"

    invoke-direct {v0, v1, v3, v2}, Lcom/taplytics/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taplytics/dd;->albatross:Lcom/taplytics/dd;

    new-instance v0, Lcom/taplytics/dd;

    const-string v1, "PEOPLE"

    const-string v2, "people"

    invoke-direct {v0, v1, v4, v2}, Lcom/taplytics/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taplytics/dd;->alligator:Lcom/taplytics/dd;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taplytics/dd;

    sget-object v1, Lcom/taplytics/dd;->albatross:Lcom/taplytics/dd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taplytics/dd;->alligator:Lcom/taplytics/dd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taplytics/dd;->albatross:[Lcom/taplytics/dd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/taplytics/dd;->antelope:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taplytics/dd;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/taplytics/dd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taplytics/dd;

    return-object v0
.end method

.method public static values()[Lcom/taplytics/dd;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/taplytics/dd;->albatross:[Lcom/taplytics/dd;

    invoke-virtual {v0}, [Lcom/taplytics/dd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taplytics/dd;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/taplytics/dd;->antelope:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
