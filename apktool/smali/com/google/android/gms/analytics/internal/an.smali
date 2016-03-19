.class public Lcom/google/android/gms/analytics/internal/an;
.super Lcom/google/android/gms/analytics/internal/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/t;-><init>(Lcom/google/android/gms/analytics/internal/v;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/ca;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/an;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/an;->zzhS()Lcom/google/android/gms/d/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/d/bs;->b()Lcom/google/android/gms/d/ca;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/an;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/an;->a()Lcom/google/android/gms/d/ca;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/d/ca;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/d/ca;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzhn()V
    .locals 0

    return-void
.end method
