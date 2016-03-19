.class Lcom/google/android/gms/common/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ab;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/api/ab$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/af;-><init>(Lcom/google/android/gms/common/api/ab;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ab;->c(Lcom/google/android/gms/common/api/ab;)Lcom/google/android/gms/d/cj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/ad;

    iget-object v2, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ad;-><init>(Lcom/google/android/gms/common/api/ab;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/d/cj;->a(Lcom/google/android/gms/common/internal/al;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/ab;->b(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/api/ab;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ab;->e(Lcom/google/android/gms/common/api/ab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/af;->a:Lcom/google/android/gms/common/api/ab;

    invoke-static {v1}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
