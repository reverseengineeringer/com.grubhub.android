.class public Lcom/paypal/android/sdk/dv;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/sdk/ea;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Lcom/paypal/android/sdk/dn;

.field private g:Lcom/paypal/android/sdk/dp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/dv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/dn;Lcom/paypal/android/sdk/dp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/paypal/android/sdk/dv;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/dv;->b:Lcom/paypal/android/sdk/ea;

    iput-object p3, p0, Lcom/paypal/android/sdk/dv;->f:Lcom/paypal/android/sdk/dn;

    iput-object p4, p0, Lcom/paypal/android/sdk/dv;->g:Lcom/paypal/android/sdk/dp;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/dv;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/dv;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->g:Lcom/paypal/android/sdk/dp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dp;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/dv;->e:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/dv;->interrupt()V

    :goto_0
    invoke-virtual {p0}, Lcom/paypal/android/sdk/dv;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to die"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lcom/paypal/android/sdk/dz;)V
    .locals 3

    iget-object v1, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Queued "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/paypal/android/sdk/dv;->e:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Lcom/paypal/android/sdk/dz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/dz;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/cj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->f:Lcom/paypal/android/sdk/dn;

    :goto_3
    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/dw;->b(Lcom/paypal/android/sdk/dz;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->b:Lcom/paypal/android/sdk/ea;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/dz;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dz;

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "paypal.sdk"

    const-string v3, "Exception computing request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/paypal/android/sdk/an;

    sget-object v3, Lcom/paypal/android/sdk/am;->c:Lcom/paypal/android/sdk/am;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/am;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JSON Exception in computeRequest"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/paypal/android/sdk/an;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/al;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "paypal.sdk"

    const-string v3, "Exception computing request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/paypal/android/sdk/an;

    sget-object v3, Lcom/paypal/android/sdk/am;->c:Lcom/paypal/android/sdk/am;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/am;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unsupported encoding"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/paypal/android/sdk/an;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/al;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->g:Lcom/paypal/android/sdk/dp;

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/dv;->g:Lcom/paypal/android/sdk/dp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dp;->b()V

    return-void
.end method
