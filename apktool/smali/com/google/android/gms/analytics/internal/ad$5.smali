.class Lcom/google/android/gms/analytics/internal/ad$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/ad;->a(Lcom/google/android/gms/analytics/internal/ap;J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/ap;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/analytics/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/ad;Lcom/google/android/gms/analytics/internal/ap;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/ad$5;->c:Lcom/google/android/gms/analytics/internal/ad;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/ad$5;->a:Lcom/google/android/gms/analytics/internal/ap;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/ad$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ad$5;->c:Lcom/google/android/gms/analytics/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/ad$5;->a:Lcom/google/android/gms/analytics/internal/ap;

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/ad$5;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/ad;->a(Lcom/google/android/gms/analytics/internal/ap;J)V

    return-void
.end method
