.class Lcom/facebook/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/b;",
            "Lcom/facebook/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1467
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/j;->a:Ljava/lang/Object;

    .line 1468
    sput-boolean v1, Lcom/facebook/a/j;->b:Z

    .line 1469
    sput-boolean v1, Lcom/facebook/a/j;->c:Z

    .line 1472
    new-instance v0, Lcom/facebook/a/j$1;

    invoke-direct {v0}, Lcom/facebook/a/j$1;-><init>()V

    sput-object v0, Lcom/facebook/a/j;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/m;
    .locals 2

    .prologue
    .line 1574
    invoke-static {p0}, Lcom/facebook/a/j;->b(Landroid/content/Context;)V

    .line 1577
    sget-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/m;

    .line 1578
    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Lcom/facebook/a/m;

    invoke-direct {v0}, Lcom/facebook/a/m;-><init>()V

    .line 1580
    sget-object v1, Lcom/facebook/a/j;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    :cond_0
    return-object v0
.end method

.method private static a()V
    .locals 5

    .prologue
    .line 1587
    sget-boolean v0, Lcom/facebook/a/j;->b:Z

    if-nez v0, :cond_0

    .line 1588
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/j;->b:Z

    .line 1589
    invoke-static {}, Lcom/facebook/a/a;->g()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/j;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1594
    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1516
    const/4 v2, 0x0

    .line 1518
    sget-object v3, Lcom/facebook/a/j;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 1519
    :try_start_0
    sget-boolean v0, Lcom/facebook/a/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1521
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const-string v4, "AppEventsLogger.persistedsessioninfo"

    const/4 v5, 0x0

    .line 1523
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1528
    :try_start_2
    sget-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1529
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/a/j;->b:Z

    .line 1530
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    const-string v2, "AppEvents"

    const-string v4, "App session info saved"

    invoke-static {v0, v2, v4}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1537
    :try_start_3
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 1540
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1541
    return-void

    .line 1534
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1535
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/facebook/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1537
    :try_start_5
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1540
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1537
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1534
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lcom/facebook/a/b;Lcom/facebook/a/a;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1550
    sget-object v1, Lcom/facebook/a/j;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1551
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/a/j;->a(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/m;

    move-result-object v0

    .line 1552
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/a/m;->a(Lcom/facebook/a/a;JLjava/lang/String;)V

    .line 1553
    invoke-static {}, Lcom/facebook/a/j;->a()V

    .line 1554
    monitor-exit v1

    .line 1555
    return-void

    .line 1554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 1481
    const/4 v0, 0x0

    .line 1483
    sget-object v2, Lcom/facebook/a/j;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 1484
    :try_start_0
    sget-boolean v1, Lcom/facebook/a/j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1486
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    const-string v3, "AppEventsLogger.persistedsessioninfo"

    .line 1488
    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1490
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    .line 1491
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    const-string v3, "AppEvents"

    const-string v4, "App session info loaded"

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1499
    :try_start_3
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 1500
    const-string v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1501
    sget-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    .line 1508
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/j;->c:Z

    .line 1509
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/a/j;->b:Z

    .line 1512
    :cond_1
    :goto_0
    monitor-exit v2

    .line 1513
    return-void

    .line 1495
    :catch_0
    move-exception v1

    .line 1499
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 1500
    const-string v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1501
    sget-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 1502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    .line 1508
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/j;->c:Z

    .line 1509
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/a/j;->b:Z

    goto :goto_0

    .line 1512
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1496
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1497
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/facebook/a/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1499
    :try_start_5
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 1500
    const-string v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1501
    sget-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 1502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/j;->d:Ljava/util/Map;

    .line 1508
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/j;->c:Z

    .line 1509
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/a/j;->b:Z

    goto :goto_0

    .line 1499
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 1500
    const-string v1, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1501
    sget-object v1, Lcom/facebook/a/j;->d:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 1502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/a/j;->d:Ljava/util/Map;

    .line 1508
    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/a/j;->c:Z

    .line 1509
    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/a/j;->b:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1499
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1496
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1495
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
