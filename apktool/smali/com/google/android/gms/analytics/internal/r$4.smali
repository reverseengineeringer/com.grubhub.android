.class Lcom/google/android/gms/analytics/internal/r$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/r;->a(Lcom/google/android/gms/analytics/internal/ap;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/ap;

.field final synthetic b:Lcom/google/android/gms/analytics/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/r;Lcom/google/android/gms/analytics/internal/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/r$4;->b:Lcom/google/android/gms/analytics/internal/r;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/r$4;->a:Lcom/google/android/gms/analytics/internal/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r$4;->b:Lcom/google/android/gms/analytics/internal/r;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/r;->a(Lcom/google/android/gms/analytics/internal/r;)Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/r$4;->a:Lcom/google/android/gms/analytics/internal/ap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/ad;->a(Lcom/google/android/gms/analytics/internal/ap;)V

    return-void
.end method
