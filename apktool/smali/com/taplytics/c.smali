.class public Lcom/taplytics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taplytics/h",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/taplytics/g;

.field private e:Z

.field private f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taplytics/c;->a:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taplytics/c;->b:Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/taplytics/g;->antelope:Lcom/taplytics/g;

    iput-object v0, p0, Lcom/taplytics/c;->d:Lcom/taplytics/g;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taplytics/c;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/taplytics/c;)Lcom/taplytics/c;
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/taplytics/c;->f()Lcom/taplytics/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/taplytics/g;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taplytics/g;",
            "TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taplytics/c;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    iget-object v1, p0, Lcom/taplytics/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-boolean v2, p0, Lcom/taplytics/c;->e:Z

    if-nez v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/taplytics/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 45
    iput-object p1, p0, Lcom/taplytics/c;->d:Lcom/taplytics/g;

    .line 46
    iput-object p3, p0, Lcom/taplytics/c;->f:Ljava/lang/Exception;

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/taplytics/c;->e:Z

    .line 48
    iput-object p2, p0, Lcom/taplytics/c;->c:Ljava/lang/Object;

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taplytics/h;

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;Lcom/taplytics/g;)V

    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    monitor-exit v1

    .line 57
    :cond_1
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/taplytics/h;Lcom/taplytics/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taplytics/h",
            "<TT;>;",
            "Lcom/taplytics/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/taplytics/f;->a:[I

    invoke-virtual {p2}, Lcom/taplytics/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/taplytics/c;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/taplytics/h;->a(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Lcom/taplytics/h;->e()V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/taplytics/c;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/taplytics/h;->a(Ljava/lang/Exception;)V

    .line 70
    invoke-virtual {p1}, Lcom/taplytics/h;->b()V

    .line 71
    iget-object v0, p0, Lcom/taplytics/c;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/taplytics/h;->b(Ljava/lang/Exception;)V

    .line 72
    invoke-virtual {p1}, Lcom/taplytics/h;->d()V

    goto :goto_0

    .line 75
    :pswitch_2
    invoke-virtual {p1}, Lcom/taplytics/h;->c()V

    .line 76
    iget-object v0, p0, Lcom/taplytics/c;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/taplytics/h;->b(Ljava/lang/Exception;)V

    .line 77
    invoke-virtual {p1}, Lcom/taplytics/h;->d()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()Lcom/taplytics/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taplytics/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    return-object p0
.end method


# virtual methods
.method public a(Lcom/taplytics/h;)Lcom/taplytics/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TypedPromise",
            "Listener:Lcom/taplytics/h",
            "<TT;>;>(TTypedPromise",
            "Listener;",
            ")TTypedPromise",
            "Listener;"
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/taplytics/c;->e:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/taplytics/c;->d:Lcom/taplytics/g;

    invoke-direct {p0, p1, v0}, Lcom/taplytics/c;->a(Lcom/taplytics/h;Lcom/taplytics/g;)V

    .line 110
    :goto_0
    return-object p1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/taplytics/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    sget-object v0, Lcom/taplytics/g;->alligator:Lcom/taplytics/g;

    invoke-direct {p0, v0, v1, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/g;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 120
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 145
    invoke-static {}, Lcom/taplytics/i;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taplytics/d;

    invoke-direct {v1, p0}, Lcom/taplytics/d;-><init>(Lcom/taplytics/c;)V

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/taplytics/e;

    invoke-direct {v1, p0, v0}, Lcom/taplytics/e;-><init>(Lcom/taplytics/c;Ljava/util/concurrent/ScheduledFuture;)V

    invoke-virtual {p0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 160
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/taplytics/g;->alpaca:Lcom/taplytics/g;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/taplytics/c;->a(Lcom/taplytics/g;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 124
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    sget-object v0, Lcom/taplytics/g;->anteater:Lcom/taplytics/g;

    invoke-direct {p0, v0, v1, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/g;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 128
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/taplytics/c;->d:Lcom/taplytics/g;

    sget-object v1, Lcom/taplytics/g;->alligator:Lcom/taplytics/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/taplytics/c;->d:Lcom/taplytics/g;

    sget-object v1, Lcom/taplytics/g;->alpaca:Lcom/taplytics/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/taplytics/g;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/taplytics/c;->d:Lcom/taplytics/g;

    return-object v0
.end method
