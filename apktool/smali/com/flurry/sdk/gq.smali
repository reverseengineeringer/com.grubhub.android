.class public Lcom/flurry/sdk/gq;
.super Lcom/flurry/sdk/im;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/im",
        "<",
        "Lcom/flurry/sdk/gp;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/im;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/il;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq;->c(Lcom/flurry/sdk/il;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/sdk/gq;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/il;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq;->c(Lcom/flurry/sdk/il;)V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/il;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq;->d(Lcom/flurry/sdk/il;)V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/il;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq;->c(Lcom/flurry/sdk/il;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/sdk/hu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/hu",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gp;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/flurry/sdk/hu;

    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hn;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, ".yflurryanreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryanreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/gq$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/gq$1;-><init>(Lcom/flurry/sdk/gq;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/hu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/iy;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/gp;)V
    .locals 4

    .prologue
    .line 49
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending next report for original url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/gp;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to current url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/gp;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/flurry/sdk/ii;

    invoke-direct {v0}, Lcom/flurry/sdk/ii;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/gp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;)V

    .line 55
    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ii;->a(I)V

    .line 56
    sget-object v1, Lcom/flurry/sdk/ij$a;->b:Lcom/flurry/sdk/ij$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ij$a;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ii;->a(Z)V

    .line 58
    new-instance v1, Lcom/flurry/sdk/gq$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/gq$2;-><init>(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gp;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii$a;)V

    .line 119
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/hl;->a(Ljava/lang/Object;Lcom/flurry/sdk/jq;)V

    .line 120
    return-void
.end method

.method protected bridge synthetic a(Lcom/flurry/sdk/il;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/flurry/sdk/gp;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gp;)V

    return-void
.end method
