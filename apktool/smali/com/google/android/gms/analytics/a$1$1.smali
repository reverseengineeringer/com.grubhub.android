.class Lcom/google/android/gms/analytics/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/a$1;->a(Ljava/lang/Throwable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/a$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/a$1$1;->a:Lcom/google/android/gms/analytics/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/a$1$1;->a:Lcom/google/android/gms/analytics/a$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/a$1;->d:Lcom/google/android/gms/analytics/a;

    iget-object v1, p0, Lcom/google/android/gms/analytics/a$1$1;->a:Lcom/google/android/gms/analytics/a$1;

    iget v1, v1, Lcom/google/android/gms/analytics/a$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/a;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/a$1$1;->a:Lcom/google/android/gms/analytics/a$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/a$1;->b:Lcom/google/android/gms/analytics/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/v;->e()Lcom/google/android/gms/analytics/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/a$1$1;->a:Lcom/google/android/gms/analytics/a$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/a$1;->c:Lcom/google/android/gms/analytics/internal/i;

    const-string v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/i;->zzaT(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/a$1$1;->a:Lcom/google/android/gms/analytics/a$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/a$1;->c:Lcom/google/android/gms/analytics/internal/i;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/i;->zzaT(Ljava/lang/String;)V

    goto :goto_0
.end method
