.class Lcom/flurry/sdk/jj$1;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jj;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jj;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/flurry/sdk/jj$1;->a:Lcom/flurry/sdk/jj;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/sdk/jh;

    invoke-direct {v0}, Lcom/flurry/sdk/jh;-><init>()V

    .line 22
    invoke-virtual {v0}, Lcom/flurry/sdk/jh;->b()V

    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/jj$1;->a:Lcom/flurry/sdk/jj;

    invoke-static {v0}, Lcom/flurry/sdk/jj;->a(Lcom/flurry/sdk/jj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jj$1;->a:Lcom/flurry/sdk/jj;

    invoke-static {v0}, Lcom/flurry/sdk/jj;->b(Lcom/flurry/sdk/jj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jj$1;->a:Lcom/flurry/sdk/jj;

    invoke-static {v1}, Lcom/flurry/sdk/jj;->c(Lcom/flurry/sdk/jj;)Lcom/flurry/sdk/jp;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/jj$1;->a:Lcom/flurry/sdk/jj;

    invoke-static {v2}, Lcom/flurry/sdk/jj;->d(Lcom/flurry/sdk/jj;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;J)V

    .line 27
    :cond_0
    return-void
.end method
