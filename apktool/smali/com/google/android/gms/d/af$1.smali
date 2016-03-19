.class Lcom/google/android/gms/d/af$1;
.super Lcom/google/android/gms/d/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/d/af;->a(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ah",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Lcom/google/android/gms/appdatasearch/UsageInfo;

.field final synthetic d:Lcom/google/android/gms/d/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/af;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/af$1;->d:Lcom/google/android/gms/d/af;

    iput-object p3, p0, Lcom/google/android/gms/d/af$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/d/af$1;->c:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/d/ah;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/d/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/d/ai;-><init>(Lcom/google/android/gms/common/api/z;)V

    iget-object v1, p0, Lcom/google/android/gms/d/af$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/d/af$1;->c:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/d/w;->a(Lcom/google/android/gms/d/z;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V

    return-void
.end method
