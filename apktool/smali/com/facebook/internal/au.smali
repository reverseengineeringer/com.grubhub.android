.class public Lcom/facebook/internal/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Lcom/facebook/internal/aw;

.field private final d:I

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Lcom/facebook/internal/aw;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/internal/au;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/internal/au;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/internal/au;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/facebook/m;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/au;-><init>(ILjava/util/concurrent/Executor;)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/au;->b:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/au;->f:Lcom/facebook/internal/aw;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/internal/au;->g:I

    .line 53
    iput p1, p0, Lcom/facebook/internal/au;->d:I

    .line 54
    iput-object p2, p0, Lcom/facebook/internal/au;->e:Ljava/util/concurrent/Executor;

    .line 55
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/au;->a(Lcom/facebook/internal/aw;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/au;Lcom/facebook/internal/aw;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/internal/au;->a(Lcom/facebook/internal/aw;)V

    return-void
.end method

.method private a(Lcom/facebook/internal/aw;)V
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/facebook/internal/au;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/facebook/internal/au;->f:Lcom/facebook/internal/aw;

    invoke-virtual {p1, v2}, Lcom/facebook/internal/aw;->a(Lcom/facebook/internal/aw;)Lcom/facebook/internal/aw;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/au;->f:Lcom/facebook/internal/aw;

    .line 99
    iget v2, p0, Lcom/facebook/internal/au;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/internal/au;->g:I

    .line 102
    :cond_0
    iget v2, p0, Lcom/facebook/internal/au;->g:I

    iget v3, p0, Lcom/facebook/internal/au;->d:I

    if-ge v2, v3, :cond_1

    .line 103
    iget-object v0, p0, Lcom/facebook/internal/au;->c:Lcom/facebook/internal/aw;

    .line 104
    if-eqz v0, :cond_1

    .line 108
    iget-object v2, p0, Lcom/facebook/internal/au;->c:Lcom/facebook/internal/aw;

    invoke-virtual {v0, v2}, Lcom/facebook/internal/aw;->a(Lcom/facebook/internal/aw;)Lcom/facebook/internal/aw;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/au;->c:Lcom/facebook/internal/aw;

    .line 109
    iget-object v2, p0, Lcom/facebook/internal/au;->f:Lcom/facebook/internal/aw;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/aw;->a(Lcom/facebook/internal/aw;Z)Lcom/facebook/internal/aw;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/au;->f:Lcom/facebook/internal/aw;

    .line 110
    iget v2, p0, Lcom/facebook/internal/au;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/internal/au;->g:I

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/internal/aw;->a(Z)V

    .line 115
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    invoke-direct {p0, v0}, Lcom/facebook/internal/au;->b(Lcom/facebook/internal/aw;)V

    .line 120
    :cond_2
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/facebook/internal/aw;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/au;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/internal/au$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/au$1;-><init>(Lcom/facebook/internal/au;Lcom/facebook/internal/aw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lcom/facebook/internal/av;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/au;->a(Ljava/lang/Runnable;Z)Lcom/facebook/internal/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Z)Lcom/facebook/internal/av;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/internal/aw;

    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/aw;-><init>(Lcom/facebook/internal/au;Ljava/lang/Runnable;)V

    .line 63
    iget-object v1, p0, Lcom/facebook/internal/au;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/facebook/internal/au;->c:Lcom/facebook/internal/aw;

    invoke-virtual {v0, v2, p2}, Lcom/facebook/internal/aw;->a(Lcom/facebook/internal/aw;Z)Lcom/facebook/internal/aw;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/au;->c:Lcom/facebook/internal/aw;

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-direct {p0}, Lcom/facebook/internal/au;->a()V

    .line 68
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
