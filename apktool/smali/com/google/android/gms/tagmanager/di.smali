.class Lcom/google/android/gms/tagmanager/di;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/analytics/e;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->a:Lcom/google/android/gms/analytics/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/e;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->a:Lcom/google/android/gms/analytics/e;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->a:Lcom/google/android/gms/analytics/e;

    new-instance v1, Lcom/google/android/gms/tagmanager/dj;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/dj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/e;->a(Lcom/google/android/gms/analytics/l;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->a:Lcom/google/android/gms/analytics/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/e;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Lcom/google/android/gms/analytics/Tracker;
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


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/di;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method
