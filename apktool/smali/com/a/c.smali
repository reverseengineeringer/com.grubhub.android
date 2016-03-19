.class public Lcom/a/c;
.super Lcom/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c;


# instance fields
.field private e:Lcom/a/d;

.field private f:Lcom/a/g;

.field private g:Ljava/lang/Exception;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/a/h;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/a/h;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/a/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a;-><init>(Landroid/app/Activity;Lcom/a/h;Ljava/util/EnumSet;)V

    .line 73
    return-void
.end method

.method private a(Lcom/a/g;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 254
    iput-boolean v3, p0, Lcom/a/c;->c:Z

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/a/c;->f:Lcom/a/g;

    .line 257
    iput-object p2, p0, Lcom/a/c;->g:Ljava/lang/Exception;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/a/c;->a:Lcom/a/h;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/a/c;->f:Lcom/a/g;

    if-nez v0, :cond_1

    .line 262
    const-string v0, "Telling the listener we succeeded..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/a/c;->a:Lcom/a/h;

    invoke-interface {v0}, Lcom/a/h;->b()V

    .line 270
    :goto_0
    monitor-enter p0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_1
    iput-boolean v3, p0, Lcom/a/c;->c:Z

    .line 280
    return-void

    .line 266
    :cond_1
    const-string v0, "Telling the listener we had a bad error..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/a/c;->a:Lcom/a/h;

    iget-object v1, p0, Lcom/a/c;->f:Lcom/a/g;

    iget-object v2, p0, Lcom/a/c;->g:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/a/h;->a(Lcom/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 275
    :cond_2
    const-string v0, "No listener to notify"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private c(Lcom/a/a/b;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 227
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    .line 229
    invoke-virtual {v0}, Lcom/a/a/a;->b()Lcom/a/a/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    const-string v1, "Removing collector [%s]"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/a/a/a;->b()Lcom/a/a/b;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    :goto_1
    return-void

    .line 239
    :cond_1
    const-string v0, "Collector not found [%s]"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 242
    :cond_2
    const-string v0, "No collectors being held"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 191
    const-string v0, "checking if we are done..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    .line 198
    invoke-virtual {v0}, Lcom/a/a/a;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    .line 204
    iget-object v2, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    invoke-virtual {v0}, Lcom/a/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 211
    :cond_3
    const-string v0, "All done, sending data..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/a/c;->e()V

    .line 214
    invoke-direct {p0, v5, v5}, Lcom/a/c;->a(Lcom/a/g;Ljava/lang/Exception;)V

    .line 218
    :goto_2
    return-void

    .line 216
    :cond_4
    const-string v0, "[%s] collectors left"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private d(Lcom/a/a/b;)Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/a/c;->d:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/c;->d:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    sget-object v1, Lcom/a/a/g;->MERCHANT_SKIPPED:Lcom/a/a/g;

    invoke-virtual {v0, p1, v1}, Lcom/a/d;->a(Lcom/a/a/b;Lcom/a/a/g;)V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    new-instance v0, Lcom/a/b;

    invoke-direct {v0}, Lcom/a/b;-><init>()V

    .line 288
    new-array v1, v6, [Lcom/a/d;

    .line 289
    iget-object v2, p0, Lcom/a/c;->e:Lcom/a/d;

    aput-object v2, v1, v5

    .line 291
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 292
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lcom/a/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    :goto_0
    const-string v0, "Final Collection:"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    invoke-virtual {v0}, Lcom/a/d;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    const-string v2, "key:[%s] value:[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v4, p0, Lcom/a/c;->e:Lcom/a/d;

    invoke-virtual {v4}, Lcom/a/d;->e()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    :cond_0
    invoke-virtual {v0, v1}, Lcom/a/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 302
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/a/d;

    aget-object v1, p1, v6

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    .line 88
    invoke-virtual {p0}, Lcom/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/c;->b()J

    move-result-wide v4

    .line 90
    :goto_0
    new-instance v0, Lcom/a/a/h;

    iget-object v1, p0, Lcom/a/c;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/a/c;->e:Lcom/a/d;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a/h;-><init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;J)V

    .line 92
    iget-object v1, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/a/a/b;->GEO_LOCATION:Lcom/a/a/b;

    invoke-direct {p0, v0}, Lcom/a/c;->d(Lcom/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/c;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/a/c;->e:Lcom/a/d;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a/f;-><init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;J)V

    .line 98
    iget-object v1, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting off "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    .line 107
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 88
    :cond_1
    const-wide/16 v4, 0x1388

    goto :goto_0

    .line 110
    :cond_2
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/a/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 114
    :cond_3
    const-string v0, "Getting the quick data..."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/a/c;->e:Lcom/a/d;

    invoke-direct {v0, v1, v2}, Lcom/a/a/d;-><init>(Landroid/app/Activity;Lcom/a/d;)V

    .line 118
    invoke-virtual {v0}, Lcom/a/a/d;->a()V

    .line 119
    const-string v1, "Got Required Info"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0}, Lcom/a/a/d;->b()V

    .line 121
    const-string v1, "Got optional info..."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v0}, Lcom/a/a/d;->c()V

    .line 123
    const-string v0, "Got Device Cookie Info"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const-string v0, "Done with quick data"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/a/c;->d()V

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/a/a/b;)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Long Collector starting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public a(Lcom/a/a/b;Lcom/a/a/g;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    const-string v0, "Removing collector[%s] due to error [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/a/c;->c(Lcom/a/a/b;)V

    .line 170
    sget-object v0, Lcom/a/a/b;->WEB:Lcom/a/a/b;

    invoke-virtual {v0, p1}, Lcom/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iput-boolean v3, p0, Lcom/a/c;->c:Z

    .line 172
    sget-object v0, Lcom/a/g;->RUNTIME_FAILURE:Lcom/a/g;

    iput-object v0, p0, Lcom/a/c;->f:Lcom/a/g;

    .line 173
    iput-object p3, p0, Lcom/a/c;->g:Ljava/lang/Exception;

    .line 174
    iget-object v0, p0, Lcom/a/c;->a:Lcom/a/h;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/a/c;->a:Lcom/a/h;

    iget-object v1, p0, Lcom/a/c;->f:Lcom/a/g;

    iget-object v2, p0, Lcom/a/c;->g:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/a/h;->a(Lcom/a/g;Ljava/lang/Exception;)V

    .line 178
    :cond_0
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit p0

    .line 184
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/a/c;->d()V

    goto :goto_0
.end method

.method public b(Lcom/a/a/b;)V
    .locals 3

    .prologue
    .line 147
    const-string v0, "Collector success [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/a/c;->c(Lcom/a/a/b;)V

    .line 152
    invoke-direct {p0}, Lcom/a/c;->d()V

    .line 153
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/a/c;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 326
    const-string v0, "Called cancel.."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-boolean v0, p0, Lcom/a/c;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/c;->e:Lcom/a/d;

    invoke-virtual {v0}, Lcom/a/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    const-string v0, "Cancelling each collector"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    .line 331
    invoke-virtual {v0}, Lcom/a/a/a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/a/c;->e:Lcom/a/d;

    invoke-virtual {v0}, Lcom/a/a/a;->b()Lcom/a/a/b;

    move-result-object v3

    sget-object v4, Lcom/a/a/g;->MERCHANT_CANCELLED:Lcom/a/a/g;

    invoke-virtual {v2, v3, v4}, Lcom/a/d;->a(Lcom/a/a/b;Lcom/a/a/g;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/a;->b()Lcom/a/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] collector..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/a/a/a;->cancel(Z)Z

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelled ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/a;->b()Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] collector."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/a/c;->e()V

    .line 345
    invoke-direct {p0, v6, v6}, Lcom/a/c;->a(Lcom/a/g;Ljava/lang/Exception;)V

    .line 351
    :cond_2
    :goto_1
    return-void

    .line 346
    :cond_3
    iget-boolean v0, p0, Lcom/a/c;->c:Z

    if-nez v0, :cond_2

    .line 348
    sget-object v0, Lcom/a/g;->MERCHANT_CANCELLED:Lcom/a/g;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Merchant Cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/a/c;->a(Lcom/a/g;Ljava/lang/Exception;)V

    goto :goto_1
.end method
