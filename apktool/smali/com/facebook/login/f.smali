.class final enum Lcom/facebook/login/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/f;

.field public static final enum CANCEL:Lcom/facebook/login/f;

.field public static final enum ERROR:Lcom/facebook/login/f;

.field public static final enum SUCCESS:Lcom/facebook/login/f;


# instance fields
.field private final loggingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 533
    new-instance v0, Lcom/facebook/login/f;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/login/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/f;->SUCCESS:Lcom/facebook/login/f;

    .line 534
    new-instance v0, Lcom/facebook/login/f;

    const-string v1, "CANCEL"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/login/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/f;->CANCEL:Lcom/facebook/login/f;

    .line 535
    new-instance v0, Lcom/facebook/login/f;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/login/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/f;->ERROR:Lcom/facebook/login/f;

    .line 532
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/login/f;

    sget-object v1, Lcom/facebook/login/f;->SUCCESS:Lcom/facebook/login/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/f;->CANCEL:Lcom/facebook/login/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/login/f;->ERROR:Lcom/facebook/login/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/login/f;->$VALUES:[Lcom/facebook/login/f;

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
    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 540
    iput-object p3, p0, Lcom/facebook/login/f;->loggingValue:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/f;
    .locals 1

    .prologue
    .line 532
    const-class v0, Lcom/facebook/login/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/f;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/f;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lcom/facebook/login/f;->$VALUES:[Lcom/facebook/login/f;

    invoke-virtual {v0}, [Lcom/facebook/login/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/f;

    return-object v0
.end method


# virtual methods
.method getLoggingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/facebook/login/f;->loggingValue:Ljava/lang/String;

    return-object v0
.end method
