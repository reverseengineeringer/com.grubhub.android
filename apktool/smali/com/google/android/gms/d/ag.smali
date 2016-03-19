.class abstract Lcom/google/android/gms/d/ag;
.super Lcom/google/android/gms/common/api/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/v;",
        ">",
        "Lcom/google/android/gms/common/api/y",
        "<TT;",
        "Lcom/google/android/gms/d/ad;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/d;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/y;-><init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/d/ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/d/ad;->p()Lcom/google/android/gms/d/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/d/ag;->a(Lcom/google/android/gms/d/w;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/d/w;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/d/ad;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/ag;->a(Lcom/google/android/gms/d/ad;)V

    return-void
.end method
