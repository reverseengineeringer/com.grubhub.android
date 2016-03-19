.class Lcom/google/android/gms/common/api/zzg$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzg;->a(Lcom/google/android/gms/common/api/c;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/c;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/common/api/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzg;Lcom/google/android/gms/common/api/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzg$4;->c:Lcom/google/android/gms/common/api/zzg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzg$4;->a:Lcom/google/android/gms/common/api/c;

    iput p3, p0, Lcom/google/android/gms/common/api/zzg$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzg$4;->c:Lcom/google/android/gms/common/api/zzg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzg;->a(Lcom/google/android/gms/common/api/zzg;)Lcom/google/android/gms/common/api/al;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzg$4;->a:Lcom/google/android/gms/common/api/c;

    iget v2, p0, Lcom/google/android/gms/common/api/zzg$4;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/al;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/c;I)V

    return-void
.end method
