.class public Lcom/google/android/gms/tagmanager/eg;
.super Lcom/google/android/gms/common/api/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a",
        "<",
        "Lcom/google/android/gms/tagmanager/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/d/bc;

.field private final c:Lcom/google/android/gms/tagmanager/ek;

.field private final d:Landroid/os/Looper;

.field private final e:Lcom/google/android/gms/tagmanager/cb;

.field private final f:I

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/tagmanager/n;

.field private final i:Ljava/lang/String;

.field private j:Lcom/google/android/gms/tagmanager/em;

.field private k:Lcom/google/android/gms/d/co;

.field private volatile l:Lcom/google/android/gms/tagmanager/ed;

.field private volatile m:Z

.field private n:Lcom/google/android/gms/d/m;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Lcom/google/android/gms/tagmanager/el;

.field private r:Lcom/google/android/gms/tagmanager/eh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/em;Lcom/google/android/gms/tagmanager/el;Lcom/google/android/gms/d/co;Lcom/google/android/gms/d/bc;Lcom/google/android/gms/tagmanager/cb;)V
    .locals 2

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eg;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/eg;->h:Lcom/google/android/gms/tagmanager/n;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/eg;->d:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/eg;->i:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/eg;->f:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/eg;->j:Lcom/google/android/gms/tagmanager/em;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/eg;->k:Lcom/google/android/gms/d/co;

    new-instance v0, Lcom/google/android/gms/tagmanager/ek;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/ek;-><init>(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/tagmanager/eg$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->c:Lcom/google/android/gms/tagmanager/ek;

    new-instance v0, Lcom/google/android/gms/d/m;

    invoke-direct {v0}, Lcom/google/android/gms/d/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->n:Lcom/google/android/gms/d/m;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/eg;->b:Lcom/google/android/gms/d/bc;

    iput-object p10, p0, Lcom/google/android/gms/tagmanager/eg;->e:Lcom/google/android/gms/tagmanager/cb;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eg;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/tagmanager/by;->a()Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eg;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ep;)V
    .locals 14

    new-instance v13, Lcom/google/android/gms/tagmanager/cn;

    move-object/from16 v0, p4

    invoke-direct {v13, p1, v0}, Lcom/google/android/gms/tagmanager/cn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tagmanager/ck;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/ck;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ep;)V

    new-instance v11, Lcom/google/android/gms/d/co;

    invoke-direct {v11, p1}, Lcom/google/android/gms/d/co;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/d/bd;->c()Lcom/google/android/gms/d/bc;

    move-result-object v12

    new-instance v2, Lcom/google/android/gms/tagmanager/ax;

    const/16 v3, 0x1e

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x1388

    const-string v8, "refreshing"

    invoke-static {}, Lcom/google/android/gms/d/bd;->c()Lcom/google/android/gms/d/bc;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/ax;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/d/bc;)V

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v13

    move-object v13, v2

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/tagmanager/eg;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/em;Lcom/google/android/gms/tagmanager/el;Lcom/google/android/gms/d/co;Lcom/google/android/gms/d/bc;Lcom/google/android/gms/tagmanager/cb;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eg;->k:Lcom/google/android/gms/d/co;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/ep;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/d/co;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/tagmanager/ed;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    if-nez v0, :cond_0

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->n:Lcom/google/android/gms/d/m;

    iget-object v1, v1, Lcom/google/android/gms/d/m;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/el;->a(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/d/m;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->j:Lcom/google/android/gms/tagmanager/em;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/d/cn;

    invoke-direct {v0}, Lcom/google/android/gms/d/cn;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/eg;->o:J

    iput-wide v2, v0, Lcom/google/android/gms/d/cn;->a:J

    new-instance v1, Lcom/google/android/gms/d/i;

    invoke-direct {v1}, Lcom/google/android/gms/d/i;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    iput-object p1, v0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->j:Lcom/google/android/gms/tagmanager/em;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/em;->a(Lcom/google/android/gms/d/cn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/d/m;JZ)V
    .locals 8

    const-wide/32 v6, 0x2932e00

    monitor-enter p0

    if-eqz p4, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/eg;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/eg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    if-nez v0, :cond_2

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eg;->n:Lcom/google/android/gms/d/m;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/eg;->o:J

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x2932e00

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/eg;->o:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/eg;->b:Lcom/google/android/gms/d/bc;

    invoke-interface {v6}, Lcom/google/android/gms/d/bc;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/eg;->a(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/a;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eg;->h:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/n;->a()Lcom/google/android/gms/tagmanager/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eg;->i:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/d/m;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/tagmanager/ed;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eg;->h:Lcom/google/android/gms/tagmanager/n;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eg;->d:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/eg;->c:Lcom/google/android/gms/tagmanager/ek;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/ed;-><init>(Lcom/google/android/gms/tagmanager/n;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/ee;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/eg;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->r:Lcom/google/android/gms/tagmanager/eh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/eh;->a(Lcom/google/android/gms/tagmanager/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/common/api/v;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/ed;->a(Lcom/google/android/gms/tagmanager/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eg;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/eg;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/d/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/d/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/d/m;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/d/m;JZ)V

    return-void
.end method

.method private a(Z)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->j:Lcom/google/android/gms/tagmanager/em;

    new-instance v1, Lcom/google/android/gms/tagmanager/ei;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/ei;-><init>(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/tagmanager/eg$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/em;->a(Lcom/google/android/gms/tagmanager/ay;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    new-instance v1, Lcom/google/android/gms/tagmanager/ej;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/ej;-><init>(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/tagmanager/eg$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/el;->a(Lcom/google/android/gms/tagmanager/ay;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->j:Lcom/google/android/gms/tagmanager/em;

    iget v1, p0, Lcom/google/android/gms/tagmanager/eg;->f:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/em;->a(I)Lcom/google/android/gms/d/cs;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/google/android/gms/tagmanager/ed;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/eg;->h:Lcom/google/android/gms/tagmanager/n;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/eg;->d:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/a;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eg;->h:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/n;->a()Lcom/google/android/gms/tagmanager/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eg;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/d/cs;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->c:Lcom/google/android/gms/tagmanager/ek;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/ed;-><init>(Lcom/google/android/gms/tagmanager/n;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/ee;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/eg$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/eg$2;-><init>(Lcom/google/android/gms/tagmanager/eg;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->r:Lcom/google/android/gms/tagmanager/eh;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eg;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/el;->a(JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->j:Lcom/google/android/gms/tagmanager/em;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/em;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/d/bc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->b:Lcom/google/android/gms/d/bc;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/eg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/eg;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/d/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->n:Lcom/google/android/gms/d/m;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/eg;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/eg;->o:J

    return-wide v0
.end method

.method private f()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/by;->a()Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->b()Lcom/google/android/gms/tagmanager/bz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/bz;->zzaMJ:Lcom/google/android/gms/tagmanager/bz;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->b()Lcom/google/android/gms/tagmanager/bz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/bz;->zzaMK:Lcom/google/android/gms/tagmanager/bz;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eg;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/android/gms/tagmanager/eg;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eg;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eg;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->q:Lcom/google/android/gms/tagmanager/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/el;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/v;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/eg;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eg;->l:Lcom/google/android/gms/tagmanager/ed;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/ed;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ed;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/eg;->a(Z)V

    return-void
.end method
