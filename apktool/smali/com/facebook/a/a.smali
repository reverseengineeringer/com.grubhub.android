.class public Lcom/facebook/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/b;",
            "Lcom/facebook/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static f:Lcom/facebook/a/f;

.field private static g:Z

.field private static h:Landroid/content/Context;

.field private static i:Ljava/lang/Object;

.field private static j:Ljava/lang/String;

.field private static k:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    .line 186
    sget-object v0, Lcom/facebook/a/f;->AUTO:Lcom/facebook/a/f;

    sput-object v0, Lcom/facebook/a/a;->f:Lcom/facebook/a/f;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/ap;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-static {p1}, Lcom/facebook/internal/al;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/a;->b:Ljava/lang/String;

    .line 656
    if-nez p3, :cond_0

    .line 657
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 661
    :cond_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    .line 662
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    :cond_1
    new-instance v0, Lcom/facebook/a/b;

    invoke-direct {v0, p3}, Lcom/facebook/a/b;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/b;

    .line 673
    :goto_0
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    .line 678
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {}, Lcom/facebook/a/a;->h()V

    .line 681
    return-void

    .line 667
    :cond_3
    if-nez p2, :cond_4

    .line 668
    invoke-static {p1}, Lcom/facebook/internal/al;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 670
    :cond_4
    new-instance v0, Lcom/facebook/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/b;

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/a/b;Lcom/facebook/a/l;ZLcom/facebook/a/i;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 924
    invoke-virtual {p0}, Lcom/facebook/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v0, v5}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Z)Lcom/facebook/internal/an;

    move-result-object v3

    .line 929
    const-string v2, "%s/activities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 931
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {v1, v0, v1, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/r;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 935
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 936
    if-nez v0, :cond_0

    .line 937
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 939
    :cond_0
    const-string v4, "access_token"

    invoke-virtual {p0}, Lcom/facebook/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 942
    if-nez v3, :cond_1

    move-object v0, v1

    .line 964
    :goto_0
    return-object v0

    .line 948
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/internal/an;->a()Z

    move-result v0

    .line 946
    invoke-virtual {p1, v2, v0, p2}, Lcom/facebook/a/l;->a(Lcom/facebook/GraphRequest;ZZ)I

    move-result v0

    .line 951
    if-nez v0, :cond_2

    move-object v0, v1

    .line 952
    goto :goto_0

    .line 955
    :cond_2
    iget v1, p3, Lcom/facebook/a/i;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/facebook/a/i;->a:I

    .line 957
    new-instance v0, Lcom/facebook/a/a$6;

    invoke-direct {v0, p0, v2, p1, p3}, Lcom/facebook/a/a$6;-><init>(Lcom/facebook/a/b;Lcom/facebook/GraphRequest;Lcom/facebook/a/l;Lcom/facebook/a/i;)V

    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/r;)V

    move-object v0, v2

    .line 964
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/a/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    new-instance v0, Lcom/facebook/a/a;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/a;
    .locals 2

    .prologue
    .line 418
    new-instance v0, Lcom/facebook/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a()Lcom/facebook/a/f;
    .locals 2

    .prologue
    .line 440
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->f:Lcom/facebook/a/f;

    monitor-exit v1

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/a/g;Ljava/util/Set;)Lcom/facebook/a/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a/g;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/a/b;",
            ">;)",
            "Lcom/facebook/a/i;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 877
    new-instance v1, Lcom/facebook/a/i;

    invoke-direct {v1, v2}, Lcom/facebook/a/i;-><init>(Lcom/facebook/a/a$1;)V

    .line 879
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/m;->b(Landroid/content/Context;)Z

    move-result v3

    .line 881
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 882
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b;

    .line 883
    invoke-static {v0}, Lcom/facebook/a/a;->a(Lcom/facebook/a/b;)Lcom/facebook/a/l;

    move-result-object v6

    .line 884
    if-eqz v6, :cond_0

    .line 888
    invoke-static {v0, v6, v3, v1}, Lcom/facebook/a/a;->a(Lcom/facebook/a/b;Lcom/facebook/a/l;ZLcom/facebook/a/i;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_0

    .line 894
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 898
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 899
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/facebook/a/i;->a:I

    .line 900
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 901
    invoke-virtual {p0}, Lcom/facebook/a/g;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 899
    invoke-static {v0, v2, v3, v5}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 906
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/aa;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 911
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/l;
    .locals 1

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/facebook/a/a;->b(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/a/b;)Lcom/facebook/a/l;
    .locals 2

    .prologue
    .line 827
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 828
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/l;

    monitor-exit v1

    return-object v0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 351
    sget-object v1, Lcom/facebook/a/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/b;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/facebook/a/j;->a(Landroid/content/Context;Lcom/facebook/a/b;Lcom/facebook/a/a;JLjava/lang/String;)V

    .line 357
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/a/d;Lcom/facebook/a/b;)V
    .locals 3

    .prologue
    .line 747
    invoke-static {}, Lcom/facebook/m;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/a$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/a/a$4;-><init>(Landroid/content/Context;Lcom/facebook/a/b;Lcom/facebook/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 757
    invoke-static {p1}, Lcom/facebook/a/d;->a(Lcom/facebook/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/a/a;->k:Z

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {p1}, Lcom/facebook/a/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 759
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/a;->k:Z

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/a/a;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/a;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/b;Lcom/facebook/GraphRequest;Lcom/facebook/aa;Lcom/facebook/a/l;Lcom/facebook/a/i;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/a/a;->b(Lcom/facebook/a/b;Lcom/facebook/GraphRequest;Lcom/facebook/aa;Lcom/facebook/a/l;Lcom/facebook/a/i;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/g;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0}, Lcom/facebook/a/a;->c(Lcom/facebook/a/g;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 735
    new-instance v0, Lcom/facebook/a/d;

    iget-object v1, p0, Lcom/facebook/a/a;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 741
    sget-object v1, Lcom/facebook/a/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/b;

    invoke-static {v1, v0, v2}, Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/d;Lcom/facebook/a/b;)V

    .line 742
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/l;
    .locals 5

    .prologue
    .line 804
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/l;

    .line 805
    const/4 v1, 0x0

    .line 806
    if-nez v0, :cond_0

    .line 809
    invoke-static {p0}, Lcom/facebook/internal/d;->a(Landroid/content/Context;)Lcom/facebook/internal/d;

    move-result-object v0

    move-object v1, v0

    .line 812
    :cond_0
    sget-object v2, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 814
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/l;

    .line 815
    if-nez v0, :cond_1

    .line 816
    new-instance v0, Lcom/facebook/a/l;

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-static {p0}, Lcom/facebook/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/a/l;-><init>(Lcom/facebook/internal/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    sget-object v1, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    :cond_1
    monitor-exit v2

    return-object v0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1133
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1134
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 1135
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1137
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1140
    const-string v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    .line 1141
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    .line 1145
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/a/a;->j:Ljava/lang/String;

    .line 1147
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    :cond_1
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    return-object v0

    .line 1151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Lcom/facebook/a/b;Lcom/facebook/GraphRequest;Lcom/facebook/aa;Lcom/facebook/a/l;Lcom/facebook/a/i;)V
    .locals 10

    .prologue
    .line 973
    invoke-virtual {p2}, Lcom/facebook/aa;->a()Lcom/facebook/j;

    move-result-object v3

    .line 974
    const-string v1, "Success"

    .line 976
    sget-object v0, Lcom/facebook/a/h;->SUCCESS:Lcom/facebook/a/h;

    .line 978
    if-eqz v3, :cond_5

    .line 980
    invoke-virtual {v3}, Lcom/facebook/j;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 981
    const-string v1, "Failed: No Connectivity"

    .line 982
    sget-object v0, Lcom/facebook/a/h;->NO_CONNECTIVITY:Lcom/facebook/a/h;

    move-object v2, v1

    move-object v1, v0

    .line 991
    :goto_0
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    invoke-static {v0}, Lcom/facebook/m;->a(Lcom/facebook/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 996
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1002
    :goto_1
    sget-object v4, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    sget-object v5, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1004
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 1002
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lcom/facebook/a/l;->a(Z)V

    .line 1011
    sget-object v0, Lcom/facebook/a/h;->NO_CONNECTIVITY:Lcom/facebook/a/h;

    if-ne v1, v0, :cond_1

    .line 1017
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0, p0, p3}, Lcom/facebook/a/k;->a(Landroid/content/Context;Lcom/facebook/a/b;Lcom/facebook/a/l;)V

    .line 1020
    :cond_1
    sget-object v0, Lcom/facebook/a/h;->SUCCESS:Lcom/facebook/a/h;

    if-eq v1, v0, :cond_2

    .line 1022
    iget-object v0, p4, Lcom/facebook/a/i;->b:Lcom/facebook/a/h;

    sget-object v2, Lcom/facebook/a/h;->NO_CONNECTIVITY:Lcom/facebook/a/h;

    if-eq v0, v2, :cond_2

    .line 1023
    iput-object v1, p4, Lcom/facebook/a/i;->b:Lcom/facebook/a/h;

    .line 1026
    :cond_2
    return-void

    .line 984
    :cond_3
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 985
    invoke-virtual {p2}, Lcom/facebook/aa;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 986
    invoke-virtual {v3}, Lcom/facebook/j;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 984
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 987
    sget-object v0, Lcom/facebook/a/h;->SERVER_ERROR:Lcom/facebook/a/h;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 998
    :catch_0
    move-exception v0

    .line 999
    const-string v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    .line 1009
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/a/g;)V
    .locals 2

    .prologue
    .line 834
    invoke-static {}, Lcom/facebook/m;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/a$5;

    invoke-direct {v1, p0}, Lcom/facebook/a/a$5;-><init>(Lcom/facebook/a/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 840
    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Lcom/facebook/a/g;)V
    .locals 4

    .prologue
    .line 845
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    :try_start_0
    sget-boolean v0, Lcom/facebook/a/a;->g:Z

    if-eqz v0, :cond_1

    .line 847
    monitor-exit v1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/a;->g:Z

    .line 850
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 851
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-static {}, Lcom/facebook/a/a;->k()I

    .line 855
    const/4 v0, 0x0

    .line 857
    :try_start_1
    invoke-static {p0, v2}, Lcom/facebook/a/a;->a(Lcom/facebook/a/g;Ljava/util/Set;)Lcom/facebook/a/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 862
    :goto_1
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/facebook/a/a;->g:Z

    .line 864
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 866
    if-eqz v0, :cond_0

    .line 867
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/a/i;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/a/i;->b:Lcom/facebook/a/h;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 870
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 851
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 858
    :catch_0
    move-exception v1

    .line 859
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "Caught unexpected exception while flushing: "

    invoke-static {v2, v3, v1}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 864
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lcom/facebook/a/a;->i()V

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static h()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 684
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 685
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 686
    monitor-exit v1

    .line 728
    :goto_0
    return-void

    .line 688
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 689
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    new-instance v1, Lcom/facebook/a/a$2;

    invoke-direct {v1}, Lcom/facebook/a/a$2;-><init>()V

    .line 700
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 707
    new-instance v1, Lcom/facebook/a/a$3;

    invoke-direct {v1}, Lcom/facebook/a/a$3;-><init>()V

    .line 722
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static i()V
    .locals 3

    .prologue
    .line 777
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/f;

    move-result-object v0

    sget-object v2, Lcom/facebook/a/f;->EXPLICIT_ONLY:Lcom/facebook/a/f;

    if-eq v0, v2, :cond_0

    .line 779
    invoke-static {}, Lcom/facebook/a/a;->j()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 780
    sget-object v0, Lcom/facebook/a/g;->EVENT_THRESHOLD:Lcom/facebook/a/g;

    invoke-static {v0}, Lcom/facebook/a/a;->b(Lcom/facebook/a/g;)V

    .line 783
    :cond_0
    monitor-exit v1

    .line 784
    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static j()I
    .locals 4

    .prologue
    .line 787
    sget-object v2, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 789
    const/4 v0, 0x0

    .line 790
    :try_start_0
    sget-object v1, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/l;

    .line 791
    invoke-virtual {v0}, Lcom/facebook/a/l;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 792
    goto :goto_0

    .line 793
    :cond_0
    monitor-exit v2

    return v1

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static k()I
    .locals 5

    .prologue
    .line 1029
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/a/k;->a(Landroid/content/Context;)Lcom/facebook/a/k;

    move-result-object v2

    .line 1031
    const/4 v0, 0x0

    .line 1032
    invoke-virtual {v2}, Lcom/facebook/a/k;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b;

    .line 1033
    sget-object v4, Lcom/facebook/a/a;->h:Landroid/content/Context;

    .line 1034
    invoke-static {v4, v0}, Lcom/facebook/a/a;->b(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/l;

    move-result-object v4

    .line 1036
    invoke-virtual {v2, v0}, Lcom/facebook/a/k;->a(Lcom/facebook/a/b;)Ljava/util/List;

    move-result-object v0

    .line 1037
    invoke-virtual {v4, v0}, Lcom/facebook/a/l;->a(Ljava/util/List;)V

    .line 1038
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1039
    goto :goto_0

    .line 1041
    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 533
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 534
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 509
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 616
    return-void
.end method
