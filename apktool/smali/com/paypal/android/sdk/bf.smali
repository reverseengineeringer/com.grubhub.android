.class public Lcom/paypal/android/sdk/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static x:Lcom/paypal/android/sdk/bc;

.field private static final y:Ljava/lang/Object;

.field private static z:Lcom/paypal/android/sdk/bf;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/paypal/android/sdk/z;

.field private k:Lcom/paypal/android/sdk/bd;

.field private l:Lcom/paypal/android/sdk/bd;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Map;

.field private o:Ljava/util/Map;

.field private p:Landroid/location/Location;

.field private q:Ljava/util/Timer;

.field private r:Landroid/os/Handler;

.field private s:Lcom/paypal/android/sdk/ab;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/bc;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bc;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/bf;->x:Lcom/paypal/android/sdk/bc;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/bf;->y:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/bf;)I
    .locals 2

    iget v0, p0, Lcom/paypal/android/sdk/bf;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/bf;->f:I

    return v0
.end method

.method private static a(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a()Lcom/paypal/android/sdk/bf;
    .locals 2

    sget-object v1, Lcom/paypal/android/sdk/bf;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/bf;->z:Lcom/paypal/android/sdk/bf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/bf;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bf;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/bf;->z:Lcom/paypal/android/sdk/bf;

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/bf;->z:Lcom/paypal/android/sdk/bf;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v2, "Known SecurityException on some devices"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/paypal/android/sdk/bd;Lcom/paypal/android/sdk/bd;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p1, Lcom/paypal/android/sdk/bd;->ac:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->o:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/paypal/android/sdk/bd;->a(Lcom/paypal/android/sdk/bd;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "appGuid"

    iget-object v6, p0, Lcom/paypal/android/sdk/bf;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "libraryVersion"

    invoke-static {}, Lcom/paypal/android/sdk/bf;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "additionalData"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Dyson Risk Data "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/z;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/z;->h()Z

    move-result v6

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "new LogRiskMetadataRequest to: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "endpointIsStage: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " (using SSL: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v6, :cond_3

    move v0, v4

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/bt;

    iget-object v3, p0, Lcom/paypal/android/sdk/bf;->r:Landroid/os/Handler;

    if-nez v6, :cond_4

    :goto_3
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/bt;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;ZLorg/apache/http/conn/ssl/SSLSocketFactory;)V

    invoke-static {}, Lcom/paypal/android/sdk/bv;->a()Lcom/paypal/android/sdk/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bv;->a(Lcom/paypal/android/sdk/bu;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/paypal/android/sdk/bd;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method private a(Lcom/paypal/android/sdk/z;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    iput-object p1, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v1, "Configuration loaded"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->q:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/z;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/z;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/z;->e()J

    move-result-wide v4

    sget-object v6, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending logRiskMetadata every "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sessionTimeout set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "compTimeout set to    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/bf;->d:J

    mul-long v0, v4, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/bf;->e:J

    mul-long v0, v2, v10

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bk;->a(J)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/paypal/android/sdk/bf;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->q:Ljava/util/Timer;

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v1, "Starting LogRiskMetadataTask"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->q:Ljava/util/Timer;

    new-instance v1, Lcom/paypal/android/sdk/bg;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/bg;-><init>(Lcom/paypal/android/sdk/bf;)V

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/paypal/android/sdk/bf;->d:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/bf;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/bf;->f:I

    return v0
.end method

.method private static b(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/bf;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/paypal/android/sdk/bf;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/paypal/android/sdk/bf;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/bf;)J
    .locals 2

    iget-wide v0, p0, Lcom/paypal/android/sdk/bf;->e:J

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Dyson/%S (%S %S)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "3.3.1.release"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/bf;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->q:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/bf;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " update not sent correctly, retrying..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "full"

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/bd;Lcom/paypal/android/sdk/bd;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->l()Lcom/paypal/android/sdk/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/bd;Lcom/paypal/android/sdk/bd;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/bk;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/paypal/android/sdk/bk;->a()V

    const-string v0, "full"

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->l()Lcom/paypal/android/sdk/bd;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/bd;Lcom/paypal/android/sdk/bd;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    goto :goto_0

    :cond_3
    const-string v0, "incremental"

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->l()Lcom/paypal/android/sdk/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/bd;Lcom/paypal/android/sdk/bd;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    goto :goto_0
.end method

.method static synthetic g(Lcom/paypal/android/sdk/bf;)I
    .locals 2

    iget v0, p0, Lcom/paypal/android/sdk/bf;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/bf;->g:I

    return v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/bf;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/bf;->g:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/paypal/android/sdk/bf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "https://b.stats.paypal.com/counter.cgi?p="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    sget-object v1, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/ab;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Beacon not recognize host app"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ab;->a()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Beacon pairing id empty"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->u:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/paypal/android/sdk/ch;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v0, "emptyIp"

    invoke-static {v0}, Lcom/paypal/android/sdk/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon Request URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/bo;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/bf;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/y;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/bf;->r:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/y;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/bv;->a()Lcom/paypal/android/sdk/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bv;->a(Lcom/paypal/android/sdk/bu;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v3, "error reading property file"

    invoke-static {v2, v3, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic j(Lcom/paypal/android/sdk/bf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/paypal/android/sdk/bf;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private l()Lcom/paypal/android/sdk/bd;
    .locals 12

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/paypal/android/sdk/bd;

    invoke-direct {v3}, Lcom/paypal/android/sdk/bd;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/z;->i()Lcom/paypal/android/sdk/ce;

    move-result-object v8

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    move-object v7, v1

    :goto_1
    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v6}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object v6, v1

    :goto_2
    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_1
    const/4 v1, 0x1

    :goto_3
    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v9}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->A:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v5

    :goto_4
    sget-object v1, Lcom/paypal/android/sdk/cf;->w:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->A:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/paypal/android/sdk/cf;->a:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->c:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->a:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/paypal/android/sdk/cf;->O:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->u:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->S:Ljava/lang/String;

    :cond_4
    sget-object v1, Lcom/paypal/android/sdk/cf;->M:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    if-nez v1, :cond_3d

    sget-object v1, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/ab;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ab;->a()I

    move-result v1

    iput v1, v3, Lcom/paypal/android/sdk/bd;->O:I

    :cond_5
    :goto_5
    sget-object v1, Lcom/paypal/android/sdk/cf;->N:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->t:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->P:Ljava/lang/String;

    :cond_6
    sget-object v1, Lcom/paypal/android/sdk/cf;->u:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->w:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->X:Ljava/lang/String;

    :cond_7
    sget-object v1, Lcom/paypal/android/sdk/cf;->S:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "android_id"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->V:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/y;

    move-result-object v1

    sget-object v5, Lcom/paypal/android/sdk/cf;->b:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v5}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/paypal/android/sdk/y;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/paypal/android/sdk/bd;->b:Ljava/lang/String;

    :cond_9
    sget-object v5, Lcom/paypal/android/sdk/cf;->c:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v5}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/paypal/android/sdk/y;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->c:Ljava/lang/String;

    :cond_a
    sget-object v1, Lcom/paypal/android/sdk/cf;->d:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v2, :cond_3e

    const/4 v1, -0x1

    :goto_6
    iput v1, v3, Lcom/paypal/android/sdk/bd;->d:I

    :cond_b
    sget-object v1, Lcom/paypal/android/sdk/cf;->I:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v2, :cond_3f

    const/4 v1, -0x1

    :goto_7
    iput v1, v3, Lcom/paypal/android/sdk/bd;->M:I

    :cond_c
    sget-object v1, Lcom/paypal/android/sdk/cf;->J:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v2, :cond_40

    const/4 v1, -0x1

    :goto_8
    iput v1, v3, Lcom/paypal/android/sdk/bd;->L:I

    :cond_d
    sget-object v1, Lcom/paypal/android/sdk/cf;->e:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v7, :cond_41

    const/4 v1, 0x0

    :goto_9
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->e:Ljava/lang/String;

    :cond_e
    sget-object v1, Lcom/paypal/android/sdk/cf;->f:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v4, :cond_42

    const/4 v1, -0x1

    :goto_a
    iput v1, v3, Lcom/paypal/android/sdk/bd;->f:I

    :cond_f
    sget-object v1, Lcom/paypal/android/sdk/cf;->H:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->N:Ljava/lang/String;

    :cond_10
    const-string v1, "3.3.1.release"

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->i:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    if-nez v1, :cond_43

    const/4 v1, 0x0

    :goto_b
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->i:Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/sdk/cf;->g:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v6, :cond_44

    const/4 v1, 0x0

    :goto_c
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->j:Ljava/lang/String;

    :cond_11
    sget-object v1, Lcom/paypal/android/sdk/cf;->h:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v9, :cond_45

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_d
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->k:Ljava/lang/String;

    :cond_12
    sget-object v1, Lcom/paypal/android/sdk/cf;->i:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->l:Ljava/lang/String;

    :cond_13
    sget-object v1, Lcom/paypal/android/sdk/cf;->j:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->m:Ljava/lang/String;

    :cond_14
    sget-object v1, Lcom/paypal/android/sdk/cf;->k:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/paypal/android/sdk/bd;->n:J

    :cond_15
    sget-object v1, Lcom/paypal/android/sdk/cf;->l:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/paypal/android/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->o:Ljava/lang/String;

    :cond_16
    sget-object v1, Lcom/paypal/android/sdk/cf;->l:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/paypal/android/sdk/ch;->a(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->p:Ljava/util/List;

    :cond_17
    sget-object v1, Lcom/paypal/android/sdk/cf;->n:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v9, :cond_46

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_e
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->r:Ljava/lang/String;

    :cond_18
    sget-object v1, Lcom/paypal/android/sdk/cf;->o:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/paypal/android/sdk/ch;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->s:Ljava/lang/String;

    :cond_19
    sget-object v1, Lcom/paypal/android/sdk/cf;->p:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->t:Ljava/lang/String;

    :cond_1a
    sget-object v1, Lcom/paypal/android/sdk/cf;->q:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->u:Ljava/lang/String;

    :cond_1b
    sget-object v1, Lcom/paypal/android/sdk/cf;->r:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->p:Landroid/location/Location;

    if-nez v1, :cond_47

    const/4 v1, 0x0

    :goto_f
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->v:Landroid/location/Location;

    :cond_1c
    sget-object v1, Lcom/paypal/android/sdk/cf;->s:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v4, :cond_48

    const/4 v1, -0x1

    :goto_10
    iput v1, v3, Lcom/paypal/android/sdk/bd;->w:I

    :cond_1d
    sget-object v1, Lcom/paypal/android/sdk/cf;->t:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez v7, :cond_49

    const/4 v1, 0x0

    :goto_11
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->x:Ljava/lang/String;

    :cond_1e
    sget-object v1, Lcom/paypal/android/sdk/cf;->v:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->z:Ljava/lang/String;

    :cond_1f
    sget-object v1, Lcom/paypal/android/sdk/cf;->x:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/paypal/android/sdk/bk;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->B:Ljava/lang/String;

    :cond_20
    sget-object v1, Lcom/paypal/android/sdk/cf;->y:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->C:Ljava/lang/Boolean;

    :cond_21
    sget-object v1, Lcom/paypal/android/sdk/cf;->z:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->D:Ljava/lang/String;

    :cond_22
    sget-object v1, Lcom/paypal/android/sdk/cf;->R:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz v9, :cond_4a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    :goto_12
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->E:Ljava/lang/String;

    :cond_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_24

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->Y:Ljava/lang/String;

    :cond_24
    sget-object v1, Lcom/paypal/android/sdk/cf;->A:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->F:Ljava/lang/Boolean;

    :cond_25
    sget-object v1, Lcom/paypal/android/sdk/cf;->B:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-nez v7, :cond_4b

    const/4 v1, 0x0

    :goto_13
    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->G:Ljava/lang/String;

    :cond_26
    sget-object v1, Lcom/paypal/android/sdk/cf;->C:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz v9, :cond_4c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_14
    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->H:Ljava/lang/String;

    :cond_27
    sget-object v0, Lcom/paypal/android/sdk/cf;->D:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/bd;->I:J

    :cond_28
    sget-object v0, Lcom/paypal/android/sdk/cf;->E:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/paypal/android/sdk/ch;->c()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/bd;->J:J

    :cond_29
    sget-object v0, Lcom/paypal/android/sdk/cf;->F:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->K:Ljava/lang/String;

    :cond_2a
    sget-object v0, Lcom/paypal/android/sdk/cf;->K:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, ".*_?sdk_?.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_2b
    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->Q:Ljava/lang/Boolean;

    :cond_2c
    sget-object v0, Lcom/paypal/android/sdk/cf;->L:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/paypal/android/sdk/bm;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->R:Ljava/lang/Boolean;

    :cond_2d
    sget-object v0, Lcom/paypal/android/sdk/cf;->m:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/z;->f()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_16

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v2, "knownApps error"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4e

    const/4 v0, 0x0

    :goto_17
    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->q:Ljava/util/List;

    :cond_30
    sget-object v0, Lcom/paypal/android/sdk/cf;->P:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/bd;->T:J

    :cond_31
    sget-object v0, Lcom/paypal/android/sdk/cf;->Q:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/bd;->U:J

    :cond_32
    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->ac:Ljava/util/Map;

    sget-object v0, Lcom/paypal/android/sdk/cf;->T:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/ch;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->Z:Ljava/lang/String;

    :cond_33
    sget-object v0, Lcom/paypal/android/sdk/cf;->U:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/paypal/android/sdk/ch;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->ab:Ljava/lang/String;

    :cond_34
    sget-object v0, Lcom/paypal/android/sdk/cf;->V:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/paypal/android/sdk/ch;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->aa:Ljava/lang/String;

    :cond_35
    sget-object v0, Lcom/paypal/android/sdk/cf;->G:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/paypal/android/sdk/ch;->a(Landroid/content/Context;Lcom/paypal/android/sdk/bd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->W:Ljava/lang/String;

    :cond_36
    sget-object v0, Lcom/paypal/android/sdk/cf;->v:Lcom/paypal/android/sdk/cf;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cf;)Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/paypal/android/sdk/bd;->y:Ljava/lang/String;

    :cond_37
    :goto_18
    move-object v0, v3

    goto/16 :goto_0

    :cond_38
    const/4 v1, 0x0

    move-object v7, v1

    goto/16 :goto_1

    :cond_39
    const/4 v1, 0x0

    move-object v6, v1

    goto/16 :goto_2

    :cond_3a
    const/4 v1, 0x0

    goto/16 :goto_3

    :pswitch_0
    const-string v1, "none"

    iput-object v1, v3, Lcom/paypal/android/sdk/bd;->A:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_4

    :pswitch_1
    const-string v2, "gsm"

    iput-object v2, v3, Lcom/paypal/android/sdk/bd;->A:Ljava/lang/String;

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    const-class v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    :goto_19
    move-object v2, v4

    move-object v4, v1

    goto/16 :goto_4

    :cond_3b
    const/4 v1, 0x0

    goto :goto_19

    :pswitch_2
    const-string v2, "cdma"

    iput-object v2, v3, Lcom/paypal/android/sdk/bd;->A:Ljava/lang/String;

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    const-class v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    :goto_1a
    move-object v2, v1

    move-object v4, v5

    goto/16 :goto_4

    :cond_3c
    const/4 v1, 0x0

    goto :goto_1a

    :cond_3d
    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ab;->a()I

    move-result v1

    iput v1, v3, Lcom/paypal/android/sdk/bd;->O:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_1
    move-exception v0

    throw v0

    :cond_3e
    :try_start_3
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    goto/16 :goto_6

    :cond_3f
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    goto/16 :goto_7

    :cond_40
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    goto/16 :goto_8

    :cond_41
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_42
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    goto/16 :goto_a

    :cond_43
    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->j:Lcom/paypal/android/sdk/z;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/z;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_44
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :cond_45
    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_46
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_47
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/paypal/android/sdk/bf;->p:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_f

    :catch_2
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v2, "Unknown error in RiskComponent"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_48
    :try_start_4
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto/16 :goto_10

    :cond_49
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_4a
    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_4b
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto/16 :goto_13

    :cond_4c
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_4d
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_4e
    move-object v0, v1

    goto/16 :goto_17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/ab;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/paypal/android/sdk/bf;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/paypal/android/sdk/bf;->v:Z

    if-nez p3, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/ab;

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    :goto_0
    iput-object p4, p0, Lcom/paypal/android/sdk/bf;->t:Ljava/lang/String;

    iput-object v6, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    iput-object v6, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    iput-object p8, p0, Lcom/paypal/android/sdk/bf;->w:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    iput v1, p0, Lcom/paypal/android/sdk/bf;->g:I

    iput v1, p0, Lcom/paypal/android/sdk/bf;->f:I

    invoke-static {}, Lcom/paypal/android/sdk/bf;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->u:Ljava/lang/String;

    if-nez p5, :cond_0

    :try_start_0
    const-string p5, "https://www.paypalobjects.com/webstatic/risk/dyson_config_android_v3.json"

    :cond_0
    iput-object p5, p0, Lcom/paypal/android/sdk/bf;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/bf;->f()V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->r:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/paypal/android/sdk/bj;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/bj;-><init>(Lcom/paypal/android/sdk/bf;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/paypal/android/sdk/ch;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/bf;->onLocationChanged(Landroid/location/Location;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->j()Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/z;

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/z;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/z;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->u:Ljava/lang/String;

    return-object v0

    :cond_2
    iput-object p3, p0, Lcom/paypal/android/sdk/bf;->s:Lcom/paypal/android/sdk/ab;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    invoke-static {v1, v6, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Landroid/os/Message;)V
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load Configuration URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dyson Async URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/paypal/android/sdk/z;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/z;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LogRiskMetadataRequest Server returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    const-string v1, "responseEnvelope.ack"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    :try_start_3
    const-string v1, "Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v1, "LogRiskMetadataRequest Success"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/bf;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_4
    move v3, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iput-object v5, p0, Lcom/paypal/android/sdk/bf;->n:Ljava/util/Map;

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->l:Lcom/paypal/android/sdk/bd;

    goto/16 :goto_0

    :sswitch_5
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v1, "LoadConfigurationRequest failed."

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v1, "LogRiskMetadataRequest failed."

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v1, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "BeaconRequest failed "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0xa -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_8
        0x16 -> :sswitch_5
    .end sparse-switch
.end method

.method public final b()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/paypal/android/sdk/bh;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/bh;-><init>(Lcom/paypal/android/sdk/bf;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/bk;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->l()Lcom/paypal/android/sdk/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bd;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/paypal/android/sdk/bk;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->l()Lcom/paypal/android/sdk/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    iget-object v0, p0, Lcom/paypal/android/sdk/bf;->k:Lcom/paypal/android/sdk/bd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/bd;Lcom/paypal/android/sdk/bd;)V

    return-void
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    const-string v1, "Host activity detected"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/paypal/android/sdk/bf;->h:J

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/bf;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/bf;->e()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/bf;->j()Ljava/lang/String;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bf;->p:Landroid/location/Location;

    sget-object v0, Lcom/paypal/android/sdk/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location Update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
