.class Lcom/google/android/gms/common/api/zzg$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzg;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/s;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ar;

.field final synthetic b:Lcom/google/android/gms/common/api/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzg;Lcom/google/android/gms/common/api/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzg$6;->b:Lcom/google/android/gms/common/api/zzg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzg$6;->a:Lcom/google/android/gms/common/api/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzg$6;->a:Lcom/google/android/gms/common/api/ar;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ar;->a(Lcom/google/android/gms/common/api/v;)V

    return-void
.end method
