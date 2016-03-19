.class public Lcom/flurry/sdk/fu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ie;


# instance fields
.field private a:Lcom/flurry/sdk/gm;

.field private b:Lcom/flurry/sdk/gv;

.field private c:Lcom/flurry/sdk/gq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/fu;
    .locals 3

    .prologue
    .line 21
    const-class v1, Lcom/flurry/sdk/fu;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/fu;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/hn;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ie;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/gy;
    .locals 1

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/gy;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iz;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gy;

    goto :goto_0
.end method

.method private h()Lcom/flurry/sdk/gy;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jb;->e()Lcom/flurry/sdk/iz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/gy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v1

    .line 82
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 83
    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v1

    .line 91
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 92
    if-eqz v1, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v1

    .line 110
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v1

    .line 100
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 102
    if-eqz v1, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/iz;->a(Ljava/lang/Class;)V

    .line 36
    new-instance v0, Lcom/flurry/sdk/gm;

    invoke-direct {v0}, Lcom/flurry/sdk/gm;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fu;->a:Lcom/flurry/sdk/gm;

    .line 37
    new-instance v0, Lcom/flurry/sdk/gv;

    invoke-direct {v0}, Lcom/flurry/sdk/gv;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/gv;

    .line 38
    new-instance v0, Lcom/flurry/sdk/gq;

    invoke-direct {v0}, Lcom/flurry/sdk/gq;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/gq;

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1

    array-length v0, v1

    if-le v0, v4, :cond_1

    .line 139
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 140
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 145
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->c()V

    .line 45
    iput-object v1, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/gq;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/gv;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->a()V

    .line 50
    iput-object v1, p0, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/gv;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/fu;->a:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/fu;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->a()V

    .line 55
    iput-object v1, p0, Lcom/flurry/sdk/fu;->a:Lcom/flurry/sdk/gm;

    .line 58
    :cond_2
    const-class v0, Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)V

    .line 59
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    :cond_0
    return-void
.end method

.method public c()Lcom/flurry/sdk/gm;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/fu;->a:Lcom/flurry/sdk/gm;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 163
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 170
    :cond_0
    return-void
.end method

.method public d()Lcom/flurry/sdk/gv;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/gv;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/gq;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/gq;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->a()V

    .line 78
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/flurry/sdk/fu;->h()Lcom/flurry/sdk/gy;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->b()V

    .line 177
    :cond_0
    return-void
.end method
