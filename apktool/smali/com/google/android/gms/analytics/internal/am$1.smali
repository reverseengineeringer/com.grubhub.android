.class Lcom/google/android/gms/analytics/internal/am$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/am;-><init>(Lcom/google/android/gms/analytics/internal/v;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/am;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/am$1;->a:Lcom/google/android/gms/analytics/internal/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/am$1;->a:Lcom/google/android/gms/analytics/internal/am;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/am;->a(Lcom/google/android/gms/analytics/internal/am;)Lcom/google/android/gms/analytics/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/v;->h()Lcom/google/android/gms/d/bs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/d/bs;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/am$1;->a:Lcom/google/android/gms/analytics/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/am;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/am$1;->a:Lcom/google/android/gms/analytics/internal/am;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/am;->a(Lcom/google/android/gms/analytics/internal/am;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/am$1;->a:Lcom/google/android/gms/analytics/internal/am;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/am;->b(Lcom/google/android/gms/analytics/internal/am;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/am$1;->a:Lcom/google/android/gms/analytics/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/am;->a()V

    goto :goto_0
.end method
