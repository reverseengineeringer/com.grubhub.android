.class Lcom/google/android/gms/common/api/ad$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/ad;->a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ab;

.field final synthetic b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

.field final synthetic c:Lcom/google/android/gms/common/api/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/ad;Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/ad$1;->c:Lcom/google/android/gms/common/api/ad;

    iput-object p2, p0, Lcom/google/android/gms/common/api/ad$1;->a:Lcom/google/android/gms/common/api/ab;

    iput-object p3, p0, Lcom/google/android/gms/common/api/ad$1;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ad$1;->a:Lcom/google/android/gms/common/api/ab;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ad$1;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method
