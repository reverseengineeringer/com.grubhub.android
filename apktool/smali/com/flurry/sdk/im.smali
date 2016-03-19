.class public abstract Lcom/flurry/sdk/im;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/il;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Lcom/flurry/sdk/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hu",
            "<",
            "Ljava/util/List",
            "<TReportInfo;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TReportInfo;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:J

.field private final h:Ljava/lang/Runnable;

.field private final i:Lcom/flurry/sdk/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hw",
            "<",
            "Lcom/flurry/sdk/hg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/im;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flurry/sdk/im;->b:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/flurry/sdk/im$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/im$1;-><init>(Lcom/flurry/sdk/im;)V

    iput-object v0, p0, Lcom/flurry/sdk/im;->h:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/flurry/sdk/im$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/im$2;-><init>(Lcom/flurry/sdk/im;)V

    iput-object v0, p0, Lcom/flurry/sdk/im;->i:Lcom/flurry/sdk/hw;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/im;->i:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 54
    invoke-virtual {p0}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/hu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/im;->c:Lcom/flurry/sdk/hu;

    .line 56
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/im;->g:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/im;->f:I

    .line 60
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/im$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/im$3;-><init>(Lcom/flurry/sdk/im;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/im;->b()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/im;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/flurry/sdk/im;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/im;->c:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/sdk/im;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/im;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/im;->f:I

    if-ltz v0, :cond_1

    .line 136
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    const-string v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/im;->h()V

    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/im;->g:J

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/im;->f:I

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/im;->f:I

    .line 150
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/im$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/im$8;-><init>(Lcom/flurry/sdk/im;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    iget-object v1, p0, Lcom/flurry/sdk/im;->c:Lcom/flurry/sdk/hu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/hu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/im;->f()V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 161
    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/flurry/sdk/hh;->a()Lcom/flurry/sdk/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/im;->f:I

    iget-object v2, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/im;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/im;->f:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/il;

    .line 167
    invoke-virtual {v0}, Lcom/flurry/sdk/il;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :goto_0
    if-nez v0, :cond_3

    .line 178
    invoke-direct {p0}, Lcom/flurry/sdk/im;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_1
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    const-string v3, "Network is not available, aborting transmission"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/il;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 6

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/im;->h()V

    .line 187
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/im;->b(Ljava/util/List;)V

    .line 189
    iget-boolean v0, p0, Lcom/flurry/sdk/im;->e:Z

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    const-string v2, "Reporter paused"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/im;->g:J

    .line 206
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/im;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    const-string v2, "All reports sent successfully"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/im;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/flurry/sdk/im;->g:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/im;->g:J

    .line 201
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One or more reports failed to send, backing off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/flurry/sdk/im;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/im;->h:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/im;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 6

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/il;

    .line 230
    invoke-virtual {v0}, Lcom/flurry/sdk/il;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/il;->f()I

    move-result v2

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/flurry/sdk/il;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 231
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/im;->i:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->b(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 238
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/flurry/sdk/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/hu",
            "<",
            "Ljava/util/List",
            "<TReportInfo;>;>;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/flurry/sdk/il;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method public declared-synchronized b(Lcom/flurry/sdk/il;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    if-nez p1, :cond_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/im$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/im$5;-><init>(Lcom/flurry/sdk/im;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/im;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->c(Ljava/lang/Runnable;)V

    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/im;->i()V

    .line 72
    return-void
.end method

.method protected declared-synchronized c(Lcom/flurry/sdk/il;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/il;->a(Z)V

    .line 109
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/im$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/im$6;-><init>(Lcom/flurry/sdk/im;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/im;->e:Z

    .line 76
    return-void
.end method

.method protected declared-synchronized d(Lcom/flurry/sdk/il;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/il;->i()V

    .line 120
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/im$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/im$7;-><init>(Lcom/flurry/sdk/im;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/im;->e:Z

    .line 82
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/im$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/im$4;-><init>(Lcom/flurry/sdk/im;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
