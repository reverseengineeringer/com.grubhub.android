.class public final Lcom/google/android/gms/d/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/d/an;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/s",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/d/ao$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/d/ao$1;-><init>(Lcom/google/android/gms/d/ao;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    return-object v0
.end method
