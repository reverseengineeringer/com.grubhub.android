.class Lcom/google/android/gms/d/du$3;
.super Lcom/google/android/gms/wallet/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/d/du;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/wallet/FullWalletRequest;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/d/du;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/du;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/du$3;->d:Lcom/google/android/gms/d/du;

    iput-object p3, p0, Lcom/google/android/gms/d/du$3;->b:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput p4, p0, Lcom/google/android/gms/d/du$3;->c:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/k;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/dv;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/d/du$3;->b:Lcom/google/android/gms/wallet/FullWalletRequest;

    iget v1, p0, Lcom/google/android/gms/d/du$3;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/dv;->a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/d/du$3;->a(Lcom/google/android/gms/common/api/v;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/d/dv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/du$3;->a(Lcom/google/android/gms/d/dv;)V

    return-void
.end method
