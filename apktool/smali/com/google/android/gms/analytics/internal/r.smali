.class public Lcom/google/android/gms/analytics/internal/r;
.super Lcom/google/android/gms/analytics/internal/t;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/v;Lcom/google/android/gms/analytics/internal/w;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/t;-><init>(Lcom/google/android/gms/analytics/internal/v;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/w;->j(Lcom/google/android/gms/analytics/internal/v;)Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/r;)Lcom/google/android/gms/analytics/internal/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/analytics/internal/x;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzia()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhO()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/ad;->a(Lcom/google/android/gms/analytics/internal/x;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/ad;->a(Lcom/google/android/gms/analytics/internal/x;)V

    :cond_0
    return-wide v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ad;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/ap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/r$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/r$4;-><init>(Lcom/google/android/gms/analytics/internal/r;Lcom/google/android/gms/analytics/internal/ap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/bs;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/c;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzia()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/r;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/r$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/r$3;-><init>(Lcom/google/android/gms/analytics/internal/r;Lcom/google/android/gms/analytics/internal/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/bs;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/r$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/analytics/internal/r$2;-><init>(Lcom/google/android/gms/analytics/internal/r;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/bs;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/r;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/r$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/r$1;-><init>(Lcom/google/android/gms/analytics/internal/r;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/bs;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/a;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/r;->a(Lcom/google/android/gms/analytics/internal/ap;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/internal/r$5;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/internal/r$5;-><init>(Lcom/google/android/gms/analytics/internal/r;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/d/bs;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/r;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/r;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzia()V

    invoke-static {}, Lcom/google/android/gms/d/bs;->d()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ad;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/r;->zzaT(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->b()V

    return-void
.end method

.method f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhO()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ad;->d()V

    return-void
.end method

.method g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r;->zzhO()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ad;->c()V

    return-void
.end method

.method protected zzhn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Lcom/google/android/gms/analytics/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ad;->zza()V

    return-void
.end method
