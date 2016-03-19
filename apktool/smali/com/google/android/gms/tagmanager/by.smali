.class Lcom/google/android/gms/tagmanager/by;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/tagmanager/by;


# instance fields
.field private volatile b:Lcom/google/android/gms/tagmanager/bz;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/by;->e()V

    return-void
.end method

.method static a()Lcom/google/android/gms/tagmanager/by;
    .locals 2

    const-class v1, Lcom/google/android/gms/tagmanager/by;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/by;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/by;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/by;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/by;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/by;->a:Lcom/google/android/gms/tagmanager/by;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method b()Lcom/google/android/gms/tagmanager/bz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->b:Lcom/google/android/gms/tagmanager/bz;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->d:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->c:Ljava/lang/String;

    return-object v0
.end method

.method e()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/bz;->zzaMI:Lcom/google/android/gms/tagmanager/bz;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/by;->b:Lcom/google/android/gms/tagmanager/bz;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/by;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/by;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/by;->e:Ljava/lang/String;

    return-void
.end method
