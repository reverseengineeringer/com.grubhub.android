.class public Lcom/google/android/gms/analytics/internal/ac;
.super Lcom/google/android/gms/analytics/internal/t;


# instance fields
.field private final a:Lcom/google/android/gms/d/by;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/v;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/t;-><init>(Lcom/google/android/gms/analytics/internal/v;)V

    new-instance v0, Lcom/google/android/gms/d/by;

    invoke-direct {v0}, Lcom/google/android/gms/d/by;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/ac;->a:Lcom/google/android/gms/d/by;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ac;->zzhm()Lcom/google/android/gms/analytics/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/q;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/ac;->a:Lcom/google/android/gms/d/by;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/d/by;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/ac;->a:Lcom/google/android/gms/d/by;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/d/by;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()Lcom/google/android/gms/d/by;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ac;->zzia()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ac;->a:Lcom/google/android/gms/d/by;

    return-object v0
.end method

.method protected zzhn()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ac;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/d/bs;->a()Lcom/google/android/gms/d/by;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/ac;->a:Lcom/google/android/gms/d/by;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/by;->a(Lcom/google/android/gms/d/by;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ac;->a()V

    return-void
.end method
