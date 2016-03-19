.class public Lcom/google/android/gms/analytics/internal/y;
.super Lcom/google/android/gms/analytics/internal/t;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/z;

.field private b:Lcom/google/android/gms/analytics/internal/d;

.field private final c:Lcom/google/android/gms/analytics/internal/am;

.field private d:Lcom/google/android/gms/analytics/internal/n;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/v;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/t;-><init>(Lcom/google/android/gms/analytics/internal/v;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/n;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/v;->d()Lcom/google/android/gms/d/bc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/n;-><init>(Lcom/google/android/gms/d/bc;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->d:Lcom/google/android/gms/analytics/internal/n;

    new-instance v0, Lcom/google/android/gms/analytics/internal/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/z;-><init>(Lcom/google/android/gms/analytics/internal/y;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->a:Lcom/google/android/gms/analytics/internal/z;

    new-instance v0, Lcom/google/android/gms/analytics/internal/y$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/y$1;-><init>(Lcom/google/android/gms/analytics/internal/y;Lcom/google/android/gms/analytics/internal/v;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->c:Lcom/google/android/gms/analytics/internal/am;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/y;)Lcom/google/android/gms/analytics/internal/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->a:Lcom/google/android/gms/analytics/internal/z;

    return-object v0
.end method

.method private a(Landroid/content/ComponentName;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/y;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/y;->f()V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/internal/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/y;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhl()Lcom/google/android/gms/analytics/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/y;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/y;Lcom/google/android/gms/analytics/internal/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;->a(Lcom/google/android/gms/analytics/internal/d;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/y;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->d:Lcom/google/android/gms/analytics/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->a()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->c:Lcom/google/android/gms/analytics/internal/am;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhR()Lcom/google/android/gms/analytics/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ak;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/am;->a(J)V

    return-void
.end method

.method private e()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/y;->zzaT(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->c()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhl()Lcom/google/android/gms/analytics/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->d()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzia()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/analytics/internal/c;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzia()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhR()Lcom/google/android/gms/analytics/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ak;->o()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/c;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/c;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/d;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/y;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhR()Lcom/google/android/gms/analytics/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ak;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/y;->zzaT(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzia()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/y;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/z;->a()Lcom/google/android/gms/analytics/internal/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/y;->d()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->zzia()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/b;->a()Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/y;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/b;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/y;->b:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/y;->f()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected zzhn()V
    .locals 0

    return-void
.end method
