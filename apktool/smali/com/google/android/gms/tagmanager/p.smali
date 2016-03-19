.class Lcom/google/android/gms/tagmanager/p;
.super Ljava/lang/Object;


# static fields
.field private static j:Ljava/lang/Object;

.field private static k:Lcom/google/android/gms/tagmanager/p;


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:Z

.field private volatile d:Lcom/google/android/gms/a/a/b;

.field private volatile e:J

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/d/bc;

.field private final h:Ljava/lang/Thread;

.field private i:Lcom/google/android/gms/tagmanager/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/p;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/d/bd;->c()Lcom/google/android/gms/d/bc;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Lcom/google/android/gms/d/bc;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Lcom/google/android/gms/d/bc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/p;->a:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/p;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/p;->c:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/p$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/p$1;-><init>(Lcom/google/android/gms/tagmanager/p;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/p;->i:Lcom/google/android/gms/tagmanager/q;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/p;->g:Lcom/google/android/gms/d/bc;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/p;->f:Landroid/content/Context;

    :goto_0
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/p;->i:Lcom/google/android/gms/tagmanager/q;

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/tagmanager/p$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/p$2;-><init>(Lcom/google/android/gms/tagmanager/p;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/p;->h:Ljava/lang/Thread;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/p;->f:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/p;
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/p;->k:Lcom/google/android/gms/tagmanager/p;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/tagmanager/p;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/p;->k:Lcom/google/android/gms/tagmanager/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/p;->k:Lcom/google/android/gms/tagmanager/p;

    sget-object v0, Lcom/google/android/gms/tagmanager/p;->k:Lcom/google/android/gms/tagmanager/p;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/p;->d()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/p;->k:Lcom/google/android/gms/tagmanager/p;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/p;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/p;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->i:Lcom/google/android/gms/tagmanager/q;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/q;->a()Lcom/google/android/gms/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/p;->d:Lcom/google/android/gms/a/a/b;

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/p;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->g:Lcom/google/android/gms/d/bc;

    invoke-interface {v0}, Lcom/google/android/gms/d/bc;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/p;->e:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/p;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/p;->c()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->g:Lcom/google/android/gms/d/bc;

    invoke-interface {v0}, Lcom/google/android/gms/d/bc;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/p;->e:J

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/p;->f()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->d:Lcom/google/android/gms/a/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->d:Lcom/google/android/gms/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/p;->f()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->d:Lcom/google/android/gms/a/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->d:Lcom/google/android/gms/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a/b;->b()Z

    move-result v0

    goto :goto_0
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/p;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
