.class public final Lcom/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/a/h;

.field private d:Landroid/app/Activity;

.field private e:Lcom/a/a;

.field private f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/a/f;->d:Landroid/app/Activity;

    .line 297
    return-void
.end method

.method private a(Lcom/a/g;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/a/f;->c:Lcom/a/h;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/a/f;->c:Lcom/a/h;

    invoke-interface {v0, p1, p2}, Lcom/a/h;->a(Lcom/a/g;Ljava/lang/Exception;)V

    .line 454
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/a/f;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 471
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 474
    :goto_0
    if-nez v0, :cond_0

    .line 475
    sget-object v2, Lcom/a/g;->NO_NETWORK:Lcom/a/g;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/a/f;->a(Lcom/a/g;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 472
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    sget-object v2, Lcom/a/g;->RUNTIME_FAILURE:Lcom/a/g;

    invoke-direct {p0, v2, v0}, Lcom/a/f;->a(Lcom/a/g;Ljava/lang/Exception;)V

    move v0, v1

    .line 482
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 428
    if-eqz p1, :cond_0

    const-string v1, "^https?://[\\w-]+(\\.[\\w-]+)+(/[^?]*)?$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    :cond_0
    sget-object v1, Lcom/a/g;->INVALID_URL:Lcom/a/g;

    invoke-direct {p0, v1, v2}, Lcom/a/f;->a(Lcom/a/g;Ljava/lang/Exception;)V

    .line 441
    :goto_0
    return v0

    .line 432
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "^\\d{1,6}$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    :cond_2
    sget-object v1, Lcom/a/g;->INVALID_MERCHANT:Lcom/a/g;

    invoke-direct {p0, v1, v2}, Lcom/a/f;->a(Lcom/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 436
    :cond_3
    if-eqz p3, :cond_4

    const-string v1, "^[\\w-]{1,32}$"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 437
    :cond_4
    sget-object v1, Lcom/a/g;->INVALID_SESSION:Lcom/a/g;

    invoke-direct {p0, v1, v2}, Lcom/a/f;->a(Lcom/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 441
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/a/f;->a:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 383
    iget-object v0, p0, Lcom/a/f;->e:Lcom/a/a;

    if-nez v0, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/f;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/a/c;

    iget-object v1, p0, Lcom/a/f;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/a/f;->c:Lcom/a/h;

    iget-object v3, p0, Lcom/a/f;->f:Ljava/util/EnumSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/c;-><init>(Landroid/app/Activity;Lcom/a/h;Ljava/util/EnumSet;)V

    iput-object v0, p0, Lcom/a/f;->e:Lcom/a/a;

    .line 389
    iget-object v0, p0, Lcom/a/f;->e:Lcom/a/a;

    invoke-virtual {v0, p2, p3}, Lcom/a/a;->a(J)V

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/a/f;->e:Lcom/a/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/a/f;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/a/f;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/a/f;->e:Lcom/a/a;

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/a/f;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/a/f;->b:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Lcom/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/a/f;->c:Lcom/a/h;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/a/f;->e:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/a/f;->c:Lcom/a/h;

    sget-object v1, Lcom/a/g;->RUNTIME_FAILURE:Lcom/a/g;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Already running. Will not start collecting again."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/a/h;->a(Lcom/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/a/f;->c:Lcom/a/h;

    sget-object v1, Lcom/a/g;->RUNTIME_FAILURE:Lcom/a/g;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Already completed. Will not start collecting again."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/a/h;->a(Lcom/a/g;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/a/f;->b:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 369
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/f;->a(Ljava/lang/String;J)V

    .line 370
    return-void
.end method
