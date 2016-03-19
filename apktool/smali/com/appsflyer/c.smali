.class Lcom/appsflyer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    .line 1426
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    .line 1427
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1430
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->a(J)J

    .line 1434
    iget-object v2, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1437
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    .line 1439
    :try_start_0
    const-string v2, "AppsFlyerKey"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1440
    iget-object v9, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1441
    :try_start_1
    invoke-static {}, Lcom/appsflyer/a/a;->a()Lcom/appsflyer/a/a;

    move-result-object v3

    iget-object v2, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/appsflyer/a/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/appsflyer/a/b;

    move-object v6, v0

    .line 1442
    iget-object v2, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1443
    const-string v2, "AppsFlyer_1.16"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resending request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&isCachedRequest=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/appsflyer/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppsFlyer_1.16"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1454
    :catch_0
    move-exception v2

    .line 1455
    :try_start_3
    const-string v2, "AppsFlyer_1.16"

    const-string v3, "Failed to resend cached request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1458
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1459
    :catch_1
    move-exception v2

    .line 1460
    :try_start_5
    const-string v2, "AppsFlyer_1.16"

    const-string v3, "failed to check cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1462
    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    .line 1464
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1465
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_0

    .line 1458
    :cond_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1462
    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    throw v2
.end method
