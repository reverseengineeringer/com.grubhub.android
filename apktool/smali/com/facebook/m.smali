.class public final Lcom/facebook/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/concurrent/Executor;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:I

.field private static volatile h:Ljava/lang/String;

.field private static i:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lcom/facebook/internal/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/aa",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/Context;

.field private static n:I

.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/concurrent/ThreadFactory;

.field private static r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    const-class v0, Lcom/facebook/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/ad;

    sget-object v2, Lcom/facebook/ad;->DEVELOPER_ERRORS:Lcom/facebook/ad;

    aput-object v2, v1, v4

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/m;->b:Ljava/util/HashSet;

    .line 70
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/m;->h:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/m;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    sput-boolean v4, Lcom/facebook/m;->j:Z

    .line 73
    sput-boolean v4, Lcom/facebook/m;->k:Z

    .line 79
    const v0, 0xface

    sput v0, Lcom/facebook/m;->n:I

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/m;->o:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/m;->p:Ljava/util/concurrent/BlockingQueue;

    .line 90
    new-instance v0, Lcom/facebook/m$1;

    invoke-direct {v0}, Lcom/facebook/m$1;-><init>()V

    sput-object v0, Lcom/facebook/m;->q:Ljava/util/concurrent/ThreadFactory;

    .line 125
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 731
    sput p0, Lcom/facebook/m;->g:I

    .line 732
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 173
    const-class v0, Lcom/facebook/m;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/m;->a(Landroid/content/Context;Lcom/facebook/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v0

    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/facebook/n;)V
    .locals 3

    .prologue
    .line 186
    const-class v1, Lcom/facebook/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/m;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1}, Lcom/facebook/n;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 193
    :cond_1
    :try_start_1
    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/internal/ap;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/ap;->b(Landroid/content/Context;Z)V

    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/ap;->a(Landroid/content/Context;Z)V

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->m:Landroid/content/Context;

    .line 203
    sget-object v0, Lcom/facebook/m;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/m;->c(Landroid/content/Context;)V

    .line 205
    sget-object v0, Lcom/facebook/m;->m:Landroid/content/Context;

    sget-object v2, Lcom/facebook/m;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/internal/al;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/facebook/internal/ac;->b()V

    .line 209
    sget-object v0, Lcom/facebook/m;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->a(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 211
    new-instance v0, Lcom/facebook/internal/aa;

    new-instance v2, Lcom/facebook/m$2;

    invoke-direct {v2}, Lcom/facebook/m$2;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/internal/aa;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/facebook/m;->l:Lcom/facebook/internal/aa;

    .line 219
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/m$3;

    invoke-direct {v2, p1}, Lcom/facebook/m$3;-><init>(Lcom/facebook/n;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 238
    invoke-static {}, Lcom/facebook/m;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 240
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->r:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 248
    const-class v1, Lcom/facebook/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/m;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/facebook/ad;)Z
    .locals 2

    .prologue
    .line 319
    sget-object v1, Lcom/facebook/m;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 320
    :try_start_0
    invoke-static {}, Lcom/facebook/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/m;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 328
    sget-boolean v0, Lcom/facebook/m;->j:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 536
    const-string v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 577
    if-nez p0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/facebook/m;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 594
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 596
    check-cast v0, Ljava/lang/String;

    .line 597
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->d:Ljava/lang/String;

    .line 609
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/m;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 610
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->e:Ljava/lang/String;

    .line 613
    :cond_3
    sget-object v0, Lcom/facebook/m;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 614
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/m;->f:Ljava/lang/String;

    .line 617
    :cond_4
    sget v0, Lcom/facebook/m;->g:I

    if-nez v0, :cond_0

    .line 618
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/m;->a(I)V

    goto :goto_0

    .line 600
    :cond_5
    sput-object v0, Lcom/facebook/m;->d:Ljava/lang/String;

    goto :goto_1

    .line 602
    :cond_6
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 603
    new-instance v0, Lcom/facebook/h;

    const-string v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 345
    sget-boolean v0, Lcom/facebook/m;->k:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 629
    if-nez p0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-object v0

    .line 632
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 640
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 645
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 646
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 652
    :try_start_1
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 657
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 658
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    goto :goto_0

    .line 653
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 372
    sget-object v1, Lcom/facebook/m;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    sget-object v0, Lcom/facebook/m;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/m;->c:Ljava/util/concurrent/Executor;

    .line 376
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    sget-object v0, Lcom/facebook/m;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/facebook/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 424
    sget-object v0, Lcom/facebook/m;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const-string v0, "4.7.0"

    return-object v0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 562
    sget-object v0, Lcom/facebook/m;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 669
    sget-object v0, Lcom/facebook/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 688
    sget-object v0, Lcom/facebook/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 706
    sget-object v0, Lcom/facebook/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 722
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 723
    sget v0, Lcom/facebook/m;->g:I

    return v0
.end method

.method public static m()Ljava/io/File;
    .locals 1

    .prologue
    .line 741
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 742
    sget-object v0, Lcom/facebook/m;->l:Lcom/facebook/internal/aa;

    invoke-virtual {v0}, Lcom/facebook/internal/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static n()I
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lcom/facebook/internal/ap;->b()V

    .line 761
    sget v0, Lcom/facebook/m;->n:I

    return v0
.end method

.method static synthetic o()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/m;->m:Landroid/content/Context;

    return-object v0
.end method
