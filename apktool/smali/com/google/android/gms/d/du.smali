.class public Lcom/google/android/gms/d/du;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wallet/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/d/du$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/d/du$1;-><init>(Lcom/google/android/gms/d/du;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/d/du$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/d/du$3;-><init>(Lcom/google/android/gms/d/du;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/d/du$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/d/du$2;-><init>(Lcom/google/android/gms/d/du;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/d/du$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/d/du$4;-><init>(Lcom/google/android/gms/d/du;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;

    return-void
.end method
