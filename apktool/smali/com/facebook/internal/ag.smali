.class Lcom/facebook/internal/ag;
.super Lcom/facebook/internal/af;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/af;-><init>(Lcom/facebook/internal/ac$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/ac$1;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/facebook/internal/ag;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string v0, "com.facebook.wakizashi"

    return-object v0
.end method
