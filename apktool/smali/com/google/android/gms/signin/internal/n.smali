.class Lcom/google/android/gms/signin/internal/n;
.super Lcom/google/android/gms/signin/internal/e;


# instance fields
.field private final a:Lcom/google/android/gms/d/ck;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/d/ck;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/n;->a:Lcom/google/android/gms/d/ck;

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/n;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a()Lcom/google/android/gms/common/api/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/n;->a:Lcom/google/android/gms/d/ck;

    invoke-virtual {v0}, Lcom/google/android/gms/d/ck;->d()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/signin/internal/n;)Lcom/google/android/gms/common/api/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/n;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/internal/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/signin/internal/n$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/signin/internal/n$2;-><init>(Lcom/google/android/gms/signin/internal/n;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/internal/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/signin/internal/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lcom/google/android/gms/signin/internal/i;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/signin/internal/n$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/signin/internal/n$1;-><init>(Lcom/google/android/gms/signin/internal/n;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/signin/internal/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
