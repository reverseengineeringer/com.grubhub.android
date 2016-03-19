.class Lcom/flurry/sdk/gm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ii$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gm;->f()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ii$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/gm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gm;JZ)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    iput-wide p2, p0, Lcom/flurry/sdk/gm$2;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/gm$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ii;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gm$2;->a(Lcom/flurry/sdk/ii;[B)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ii;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ii",
            "<[B[B>;[B)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v7, 0x3

    .line 396
    invoke-virtual {p1}, Lcom/flurry/sdk/ii;->f()I

    move-result v4

    .line 398
    invoke-static {}, Lcom/flurry/sdk/gm;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proton config request: HTTP status code is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v0, 0x190

    if-eq v4, v0, :cond_0

    const/16 v0, 0x196

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19c

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19f

    if-ne v4, v0, :cond_2

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v0, v8, v9}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;J)J

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p1}, Lcom/flurry/sdk/ii;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 414
    iget-object v0, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    iget-wide v2, p0, Lcom/flurry/sdk/gm$2;->a:J

    iget-boolean v5, p0, Lcom/flurry/sdk/gm$2;->b:Z

    invoke-static {v0, v2, v3, v5, p2}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;JZ[B)V

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v0}, Lcom/flurry/sdk/gm;->d(Lcom/flurry/sdk/gm;)Lcom/flurry/sdk/if;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/if;->d([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    if-eqz v0, :cond_3

    .line 423
    iget-object v1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v1, v8, v9}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;J)J

    .line 425
    iget-object v1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    iget-wide v2, p0, Lcom/flurry/sdk/gm$2;->a:J

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/gm;->b(Lcom/flurry/sdk/gm;J)J

    .line 426
    iget-object v1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    iget-boolean v2, p0, Lcom/flurry/sdk/gm$2;->b:Z

    invoke-static {v1, v2}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;Z)Z

    .line 427
    iget-object v1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v1, v0}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/gc;

    .line 430
    iget-object v1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v1}, Lcom/flurry/sdk/gm;->e(Lcom/flurry/sdk/gm;)V

    .line 434
    :cond_3
    :goto_2
    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v0}, Lcom/flurry/sdk/gm;->f(Lcom/flurry/sdk/gm;)J

    move-result-wide v0

    const/4 v2, 0x1

    shl-long v2, v0, v2

    .line 439
    const/16 v0, 0x1ad

    if-ne v4, v0, :cond_4

    .line 440
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ii;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 442
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    invoke-static {}, Lcom/flurry/sdk/gm;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server returned retry time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 452
    :goto_3
    iget-object v2, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;J)J

    .line 454
    invoke-static {}, Lcom/flurry/sdk/gm;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proton config request failed, backing off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v2}, Lcom/flurry/sdk/gm;->f(Lcom/flurry/sdk/gm;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v1}, Lcom/flurry/sdk/gm;->g(Lcom/flurry/sdk/gm;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gm$2;->c:Lcom/flurry/sdk/gm;

    invoke-static {v2}, Lcom/flurry/sdk/gm;->f(Lcom/flurry/sdk/gm;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const/4 v2, 0x5

    invoke-static {}, Lcom/flurry/sdk/gm;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode proton config response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 447
    :catch_1
    move-exception v0

    .line 448
    invoke-static {}, Lcom/flurry/sdk/gm;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server returned nonsensical retry time"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-wide v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method
