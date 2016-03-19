.class Lcom/facebook/internal/ae;
.super Lcom/facebook/internal/af;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/af;-><init>(Lcom/facebook/internal/ac$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/ac$1;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/facebook/internal/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, "com.facebook.orca"

    return-object v0
.end method
