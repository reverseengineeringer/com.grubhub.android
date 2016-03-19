.class public abstract Lcom/a/a/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/a/d;

.field protected c:Lcom/a/a/b;

.field protected d:Lcom/a/a/c;

.field protected e:Lcom/a/a/g;

.field protected f:Ljava/lang/Exception;

.field protected g:Z

.field private h:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;Lcom/a/a/b;J)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/a/a/a;->a:Landroid/app/Activity;

    .line 78
    iput-object p3, p0, Lcom/a/a/a;->b:Lcom/a/d;

    .line 79
    iput-object p2, p0, Lcom/a/a/a;->d:Lcom/a/a/c;

    .line 80
    iput-object p4, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    .line 81
    const-wide/16 v0, 0x3e8

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 82
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(J)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p5, p6}, Lcom/a/a/a;->a(J)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/a/d;
    .locals 2

    .prologue
    .line 173
    const-string v0, "Starting runner..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-boolean v0, p0, Lcom/a/a/a;->g:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/a/a/a;->a()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/a/a/a;->b:Lcom/a/d;

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/a/a/a;->h:J

    .line 274
    return-void
.end method

.method protected a(Lcom/a/a/g;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end process:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a;->g:Z

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/a/a/a;->b:Lcom/a/d;

    iget-object v1, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    invoke-virtual {v0, v1, p1}, Lcom/a/d;->a(Lcom/a/a/b;Lcom/a/a/g;)V

    .line 157
    iput-object p1, p0, Lcom/a/a/a;->e:Lcom/a/a/g;

    .line 158
    iput-object p2, p0, Lcom/a/a/a;->f:Ljava/lang/Exception;

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/a/d;)V
    .locals 2

    .prologue
    .line 139
    const-string v0, "Post Execute..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/a/a/a;->d()V

    .line 141
    return-void
.end method

.method varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public b()Lcom/a/a/b;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/a/a/a;->g:Z

    return v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 208
    const-string v0, "Notifying listener..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/c;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/a/a/a;->e:Lcom/a/a/g;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    invoke-interface {v0, v1}, Lcom/a/a/c;->b(Lcom/a/a/b;)V

    .line 218
    :goto_0
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    iget-object v2, p0, Lcom/a/a/a;->e:Lcom/a/a/g;

    iget-object v3, p0, Lcom/a/a/a;->f:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/c;->a(Lcom/a/a/b;Lcom/a/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a([Ljava/lang/Void;)Lcom/a/d;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/a/a/a;->g:Z

    if-nez v0, :cond_0

    .line 233
    const-string v0, "Timed out. Cancelling..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/a/a/g;->TIMEOUT:Lcom/a/a/g;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timed out."

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    .line 237
    iput-boolean v3, p0, Lcom/a/a/a;->g:Z

    .line 238
    invoke-virtual {p0, v3}, Lcom/a/a/a;->cancel(Z)Z

    .line 239
    invoke-virtual {p0}, Lcom/a/a/a;->d()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "No need to timeout, already finished"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/a/a/a;->h:J

    return-wide v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/a/d;

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(Lcom/a/d;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "Pre Execute..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/c;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/a;->c:Lcom/a/a/b;

    invoke-interface {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/b;)V

    .line 131
    :cond_0
    iput-boolean v2, p0, Lcom/a/a/a;->g:Z

    .line 132
    return-void
.end method
