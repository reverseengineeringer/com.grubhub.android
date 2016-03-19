.class Lcom/google/android/gms/d/du$4;
.super Lcom/google/android/gms/wallet/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/d/du;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/gms/d/du;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/du;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/du$4;->e:Lcom/google/android/gms/d/du;

    iput-object p3, p0, Lcom/google/android/gms/d/du$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/d/du$4;->c:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/d/du$4;->d:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/k;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/dv;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/d/du$4;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/d/du$4;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/d/du$4;->d:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/d/dv;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/d/du$4;->a(Lcom/google/android/gms/common/api/v;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/du$4;->a(Lcom/google/android/gms/d/dv;)V

    return-void
.end method
