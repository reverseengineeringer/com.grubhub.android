.class public Lcom/flurry/sdk/hm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hw",
            "<",
            "Lcom/flurry/sdk/ja;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:J

.field private volatile e:J

.field private volatile f:J

.field private volatile g:J

.field private volatile h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/hm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/flurry/sdk/hm$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/hm$1;-><init>(Lcom/flurry/sdk/hm;)V

    iput-object v0, p0, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hw;

    .line 55
    iput-wide v2, p0, Lcom/flurry/sdk/hm;->d:J

    .line 56
    iput-wide v2, p0, Lcom/flurry/sdk/hm;->e:J

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/hm;->f:J

    .line 58
    iput-wide v2, p0, Lcom/flurry/sdk/hm;->g:J

    .line 60
    iput-wide v2, p0, Lcom/flurry/sdk/hm;->h:J

    .line 64
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/hm;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/hm;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/hm;)Lcom/flurry/sdk/hw;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hw;

    return-object v0
.end method

.method private b(Lcom/flurry/sdk/iz;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 85
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hm;->a:Ljava/lang/String;

    const-string v1, "Flurry session id cannot be created."

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-object v0, Lcom/flurry/sdk/hm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flurry session id started:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/sdk/hm;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/flurry/sdk/ja;

    invoke-direct {v0}, Lcom/flurry/sdk/ja;-><init>()V

    .line 93
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/ref/WeakReference;

    .line 94
    iput-object p1, v0, Lcom/flurry/sdk/ja;->b:Lcom/flurry/sdk/iz;

    .line 95
    sget-object v1, Lcom/flurry/sdk/ja$a;->b:Lcom/flurry/sdk/ja$a;

    iput-object v1, v0, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja$a;

    .line 96
    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 100
    invoke-static {}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jb;->c()J

    move-result-wide v0

    .line 103
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 104
    iget-wide v2, p0, Lcom/flurry/sdk/hm;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/hm;->g:J

    .line 106
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/iz;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/hm;->c:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/hm;->d:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/hm;->e:J

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/hm;->b(Lcom/flurry/sdk/iz;Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/hm$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/hm$2;-><init>(Lcom/flurry/sdk/hm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/hm;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/hm;->f:J

    .line 110
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->f:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->g:J

    return-wide v0
.end method

.method public declared-synchronized g()J
    .locals 4

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/hm;->e:J

    sub-long/2addr v0, v2

    .line 138
    iget-wide v2, p0, Lcom/flurry/sdk/hm;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/sdk/hm;->h:J

    .line 140
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 138
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/hm;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/hm;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
