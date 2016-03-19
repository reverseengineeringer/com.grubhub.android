.class public Lcom/taplytics/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/taplytics/ft;


# instance fields
.field private a:Lcom/taplytics/m;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/taplytics/es;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/taplytics/ft;->a:Lcom/taplytics/m;

    .line 41
    iput-object v0, p0, Lcom/taplytics/ft;->b:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcom/taplytics/ft;->c:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/taplytics/ft;->d:Lcom/taplytics/es;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/taplytics/ft;)Lcom/taplytics/es;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taplytics/ft;->d:Lcom/taplytics/es;

    return-object v0
.end method

.method public static a()Lcom/taplytics/ft;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/taplytics/ft;->e:Lcom/taplytics/ft;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/taplytics/ft;

    invoke-direct {v0}, Lcom/taplytics/ft;-><init>()V

    sput-object v0, Lcom/taplytics/ft;->e:Lcom/taplytics/ft;

    .line 53
    :cond_0
    sget-object v0, Lcom/taplytics/ft;->e:Lcom/taplytics/ft;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/taplytics/m;
    .locals 6

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ft;->a:Lcom/taplytics/m;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/taplytics/m;

    const-string v1, "com.google.android.gms.common.api.GoogleApiClient$Builder"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/taplytics/m;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 62
    const-string v1, "addApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/taplytics/ft;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/taplytics/ft;->b()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "addOnConnectionFailedListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-string v4, "com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/taplytics/ft;->c()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/taplytics/m;

    const-string v2, "build"

    invoke-virtual {v0, v2}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taplytics/m;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taplytics/ft;->a:Lcom/taplytics/m;

    .line 66
    iget-object v0, p0, Lcom/taplytics/ft;->a:Lcom/taplytics/m;

    const-string v1, "registerConnectionCallbacks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-string v4, "com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/taplytics/ft;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taplytics/ft;->a:Lcom/taplytics/m;

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "while adding geofences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/taplytics/ft;->d:Lcom/taplytics/es;

    invoke-interface {v0}, Lcom/taplytics/es;->b()V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while adding geofences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/taplytics/ft;->d:Lcom/taplytics/es;

    invoke-interface {v0}, Lcom/taplytics/es;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taplytics/ft;Landroid/content/Context;)Lcom/taplytics/m;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/taplytics/ft;->a(Landroid/content/Context;)Lcom/taplytics/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/ft;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/taplytics/ft;->b:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/ft;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/taplytics/ft;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/ft;Ljava/lang/Object;Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/taplytics/ft;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic a(Lcom/taplytics/ft;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/taplytics/ft;->a(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    new-instance v0, Lcom/taplytics/m;

    const-string v1, "com.google.android.gms.location.LocationServices"

    const-string v2, "GeofencingApi"

    invoke-static {v1, v2}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taplytics/m;-><init>(Ljava/lang/Object;)V

    .line 181
    new-array v1, v3, [Ljava/lang/Class;

    const-string v2, "com.google.android.gms.common.api.GoogleApiClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms.location.GeofencingRequest"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v5

    const-class v2, Landroid/app/PendingIntent;

    aput-object v2, v1, v6

    .line 182
    const-string v2, "addGeofences"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    aput-object p3, v3, v6

    invoke-virtual {v0, v2, v1, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    new-instance v0, Lcom/taplytics/m;

    const-string v1, "com.google.android.gms.location.LocationServices"

    const-string v2, "GeofencingApi"

    invoke-static {v1, v2}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taplytics/m;-><init>(Ljava/lang/Object;)V

    .line 204
    new-array v1, v3, [Ljava/lang/Class;

    const-string v2, "com.google.android.gms.common.api.GoogleApiClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v5

    .line 205
    const-string v2, "removeGeofences"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-virtual {v0, v2, v1, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "com.google.android.gms.location.LocationServices"

    const-string v1, "API"

    invoke-static {v0, v1}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, "com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/taplytics/fv;

    invoke-direct {v0, p0, p1}, Lcom/taplytics/fv;-><init>(Lcom/taplytics/ft;Landroid/content/Context;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/taplytics/ft;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taplytics/ft;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/taplytics/ft;)Lcom/taplytics/m;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taplytics/ft;->a:Lcom/taplytics/m;

    return-object v0
.end method

.method private c()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/taplytics/fu;

    invoke-direct {v0, p0}, Lcom/taplytics/fu;-><init>(Lcom/taplytics/ft;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/taplytics/ft;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taplytics/ft;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/taplytics/es;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/taplytics/ft;->d:Lcom/taplytics/es;

    .line 168
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/taplytics/fw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taplytics/fw;-><init>(Lcom/taplytics/ft;Lcom/taplytics/fu;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/taplytics/fw;->a([Ljava/util/List;)Ljava/lang/Void;

    .line 86
    return-void
.end method
