.class Lcom/google/android/gms/d/ao$1;
.super Lcom/google/android/gms/d/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/d/ao;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/s;
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/d/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/ao;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/ao$1;->b:Lcom/google/android/gms/d/ao;

    invoke-direct {p0, p2}, Lcom/google/android/gms/d/ar;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/as;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/d/as;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/aw;

    new-instance v1, Lcom/google/android/gms/d/ap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/d/ap;-><init>(Lcom/google/android/gms/common/api/z;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/d/aw;->a(Lcom/google/android/gms/d/at;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/d/as;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/ao$1;->a(Lcom/google/android/gms/d/as;)V

    return-void
.end method
