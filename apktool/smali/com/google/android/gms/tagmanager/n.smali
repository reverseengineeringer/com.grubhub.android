.class public Lcom/google/android/gms/tagmanager/n;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/google/android/gms/tagmanager/n;


# instance fields
.field private final a:Lcom/google/android/gms/tagmanager/o;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/tagmanager/h;

.field private final d:Lcom/google/android/gms/tagmanager/cw;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/android/gms/tagmanager/ed;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/tagmanager/ep;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/cw;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/n;->d:Lcom/google/android/gms/tagmanager/cw;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/n;->a:Lcom/google/android/gms/tagmanager/o;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->e:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/n;->c:Lcom/google/android/gms/tagmanager/h;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->c:Lcom/google/android/gms/tagmanager/h;

    new-instance v1, Lcom/google/android/gms/tagmanager/n$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/n$1;-><init>(Lcom/google/android/gms/tagmanager/n;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/j;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->c:Lcom/google/android/gms/tagmanager/h;

    new-instance v1, Lcom/google/android/gms/tagmanager/de;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/de;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/j;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ep;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ep;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->f:Lcom/google/android/gms/tagmanager/ep;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/n;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/n;
    .locals 5

    const-class v1, Lcom/google/android/gms/tagmanager/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/n;->g:Lcom/google/android/gms/tagmanager/n;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/n$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/n$2;-><init>()V

    new-instance v2, Lcom/google/android/gms/tagmanager/eu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/eu;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/tagmanager/n;

    new-instance v4, Lcom/google/android/gms/tagmanager/h;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/h;-><init>(Lcom/google/android/gms/tagmanager/k;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/cx;->c()Lcom/google/android/gms/tagmanager/cx;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/android/gms/tagmanager/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/cw;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/n;->g:Lcom/google/android/gms/tagmanager/n;

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/n;->g:Lcom/google/android/gms/tagmanager/n;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ed;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ed;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->b:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/tagmanager/n$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/n$3;-><init>(Lcom/google/android/gms/tagmanager/n;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/google/android/gms/common/api/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/s",
            "<",
            "Lcom/google/android/gms/tagmanager/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->a:Lcom/google/android/gms/tagmanager/o;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/n;->b:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/n;->f:Lcom/google/android/gms/tagmanager/ep;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/o;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ep;)Lcom/google/android/gms/tagmanager/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eg;->e()V

    return-object v0
.end method

.method public a()Lcom/google/android/gms/tagmanager/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->c:Lcom/google/android/gms/tagmanager/h;

    return-object v0
.end method

.method a(Lcom/google/android/gms/tagmanager/ed;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->e:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->d:Lcom/google/android/gms/tagmanager/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cw;->a()V

    return-void
.end method

.method b(Lcom/google/android/gms/tagmanager/ed;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
