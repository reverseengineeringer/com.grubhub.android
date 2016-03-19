.class public final Lcom/google/android/gms/maps/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/cw;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/ak;
    :try_end_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/d;->a(Lcom/google/android/gms/maps/internal/ak;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/c;->a:I

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/maps/internal/ak;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/ak;->a()Lcom/google/android/gms/maps/internal/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/internal/a;)V

    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/ak;->b()Lcom/google/android/gms/maps/model/internal/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/internal/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
