.class public abstract Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/v;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/s",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/common/api/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/b",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/common/api/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/w",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/google/android/gms/common/api/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/common/internal/d;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/common/api/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/b;

    return-void
.end method

.method static b(Lcom/google/android/gms/common/api/v;)V
    .locals 5

    instance-of v1, p0, Lcom/google/android/gms/common/api/u;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/u;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/u;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "AbstractPendingResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/common/api/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->f:Lcom/google/android/gms/common/api/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->j:Lcom/google/android/gms/common/internal/d;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->f:Lcom/google/android/gms/common/api/v;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/v;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/w;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->g()Lcom/google/android/gms/common/api/v;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/w;Lcom/google/android/gms/common/api/v;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private g()Lcom/google/android/gms/common/api/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a;->g:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aq;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->a()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aq;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->f:Lcom/google/android/gms/common/api/v;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a;->f:Lcom/google/android/gms/common/api/v;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/w;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/a;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->d()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/v;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->i:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a;->i:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a;->h:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->b(Lcom/google/android/gms/common/api/v;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/aq;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a;->g:Z

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aq;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a;->c(Lcom/google/android/gms/common/api/v;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/common/api/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/w",
            "<TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aq;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->g()Lcom/google/android/gms/common/api/v;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/w;Lcom/google/android/gms/common/api/v;)V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/common/api/w;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/w",
            "<TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aq;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->g()Lcom/google/android/gms/common/api/v;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/w;Lcom/google/android/gms/common/api/v;)V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/w;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->j:Lcom/google/android/gms/common/internal/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->j:Lcom/google/android/gms/common/internal/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/d;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->f:Lcom/google/android/gms/common/api/v;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->b(Lcom/google/android/gms/common/api/v;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/w;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->h:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a;->c(Lcom/google/android/gms/common/api/v;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->h:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method
