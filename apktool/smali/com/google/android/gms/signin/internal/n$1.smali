.class Lcom/google/android/gms/signin/internal/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/signin/internal/n;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/signin/internal/i;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/signin/internal/i;

.field final synthetic d:Lcom/google/android/gms/signin/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/signin/internal/n;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/signin/internal/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/n$1;->d:Lcom/google/android/gms/signin/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/n$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/n$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/n$1;->c:Lcom/google/android/gms/signin/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/n$1;->d:Lcom/google/android/gms/signin/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/n;->a(Lcom/google/android/gms/signin/internal/n;)Lcom/google/android/gms/common/api/q;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/n$1;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/n$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/q;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/r;->a()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/r;->b()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;-><init>(ZLjava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/n$1;->c:Lcom/google/android/gms/signin/internal/i;

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/i;->a(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing checkServerAuthorization callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
