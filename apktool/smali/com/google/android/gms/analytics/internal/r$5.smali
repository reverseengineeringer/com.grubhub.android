.class Lcom/google/android/gms/analytics/internal/r$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/r;->c()Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/r$5;->a:Lcom/google/android/gms/analytics/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r$5;->a:Lcom/google/android/gms/analytics/internal/r;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/r;->a(Lcom/google/android/gms/analytics/internal/r;)Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ad;->i()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/r$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
