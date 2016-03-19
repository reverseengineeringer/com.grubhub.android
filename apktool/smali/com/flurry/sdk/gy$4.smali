.class Lcom/flurry/sdk/gy$4;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;JJJI)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/flurry/sdk/gy$4;->e:Lcom/flurry/sdk/gy;

    iput-wide p2, p0, Lcom/flurry/sdk/gy$4;->a:J

    iput-wide p4, p0, Lcom/flurry/sdk/gy$4;->b:J

    iput-wide p6, p0, Lcom/flurry/sdk/gy$4;->c:J

    iput p8, p0, Lcom/flurry/sdk/gy$4;->d:I

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    .line 318
    iget-object v1, p0, Lcom/flurry/sdk/gy$4;->e:Lcom/flurry/sdk/gy;

    iget-wide v2, p0, Lcom/flurry/sdk/gy$4;->a:J

    iget-wide v4, p0, Lcom/flurry/sdk/gy$4;->b:J

    iget-wide v6, p0, Lcom/flurry/sdk/gy$4;->c:J

    iget v8, p0, Lcom/flurry/sdk/gy$4;->d:I

    invoke-virtual/range {v1 .. v8}, Lcom/flurry/sdk/gy;->a(JJJI)Lcom/flurry/sdk/gw;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/flurry/sdk/gy$4;->e:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 326
    iget-object v1, p0, Lcom/flurry/sdk/gy$4;->e:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/flurry/sdk/gy$4;->e:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->c()V

    .line 329
    return-void
.end method
