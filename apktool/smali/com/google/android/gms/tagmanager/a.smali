.class public Lcom/google/android/gms/tagmanager/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/tagmanager/h;

.field private d:Lcom/google/android/gms/tagmanager/cp;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:J

.field private volatile h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/d/cs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/a;->g:J

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/d/cs;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/d/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/a;->g:J

    iget-object v0, p6, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/i;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/d/i;)V

    iget-object v0, p6, Lcom/google/android/gms/d/m;->a:[Lcom/google/android/gms/d/l;

    if-eqz v0, :cond_0

    iget-object v0, p6, Lcom/google/android/gms/d/m;->a:[Lcom/google/android/gms/d/l;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a([Lcom/google/android/gms/d/l;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/d/cs;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/d/cs;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/a;->e(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/y;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/tagmanager/cp;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    new-instance v4, Lcom/google/android/gms/tagmanager/d;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/tagmanager/d;-><init>(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/a$1;)V

    new-instance v5, Lcom/google/android/gms/tagmanager/e;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/tagmanager/e;-><init>(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/a$1;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Lcom/google/android/gms/d/cs;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/y;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/tagmanager/cp;)V

    const-string v0, "_gtm.loadEventEnabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    const-string v1, "gtm.load"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtm.id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/h;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/d/i;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/d/cp;->a(Lcom/google/android/gms/d/i;)Lcom/google/android/gms/d/cs;
    :try_end_0
    .catch Lcom/google/android/gms/d/cw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/d/cs;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/d/cw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/tagmanager/cp;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->d:Lcom/google/android/gms/tagmanager/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([Lcom/google/android/gms/d/l;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->e()Lcom/google/android/gms/tagmanager/cp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized e()Lcom/google/android/gms/tagmanager/cp;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->d:Lcom/google/android/gms/tagmanager/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->g:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->e()Lcom/google/android/gms/tagmanager/cp;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getBoolean called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cp;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->d(Lcom/google/android/gms/d/o;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/b;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/a;->a()J

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

.method c(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/c;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/c;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->d:Lcom/google/android/gms/tagmanager/cp;

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->e()Lcom/google/android/gms/tagmanager/cp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/y;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/tagmanager/by;->a()Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->b()Lcom/google/android/gms/tagmanager/bz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/bz;->zzaMK:Lcom/google/android/gms/tagmanager/bz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/bz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/bh;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bh;-><init>()V

    return-object v0
.end method
