.class public Lcom/flurry/sdk/hx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/hx;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/flurry/sdk/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hs",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ik",
            "<",
            "Lcom/flurry/sdk/hw",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/flurry/sdk/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hs",
            "<",
            "Lcom/flurry/sdk/ik",
            "<",
            "Lcom/flurry/sdk/hw",
            "<*>;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;

    .line 36
    const-class v0, Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hx;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/flurry/sdk/hs;

    invoke-direct {v0}, Lcom/flurry/sdk/hs;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    .line 39
    new-instance v0, Lcom/flurry/sdk/hs;

    invoke-direct {v0}, Lcom/flurry/sdk/hs;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    .line 42
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/hx;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/flurry/sdk/hx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/flurry/sdk/hx;

    invoke-direct {v0}, Lcom/flurry/sdk/hx;-><init>()V

    sput-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;

    .line 26
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/flurry/sdk/hx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Lcom/flurry/sdk/hx;->c()V

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/hx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hv;)V
    .locals 4

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 142
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hw;

    .line 135
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/hx$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/flurry/sdk/hx$1;-><init>(Lcom/flurry/sdk/hx;Lcom/flurry/sdk/hw;Lcom/flurry/sdk/hv;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/hw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hw",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_0
    new-instance v1, Lcom/flurry/sdk/ik;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v3, v0, v1}, Lcom/flurry/sdk/hs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hs;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ik;

    .line 77
    iget-object v2, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    invoke-virtual {v2, v0, p1}, Lcom/flurry/sdk/hs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hs;->b(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/hw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/hw",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/ik;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/hs;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 105
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/flurry/sdk/hw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/hw",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/ik;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/hs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/hs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/hw",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 124
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 115
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ik;

    invoke-virtual {v0}, Lcom/flurry/sdk/ik;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hw;

    .line 117
    if-nez v0, :cond_1

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_1
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/hs;

    invoke-virtual {v0}, Lcom/flurry/sdk/hs;->a()V

    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/hs;

    invoke-virtual {v0}, Lcom/flurry/sdk/hs;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
