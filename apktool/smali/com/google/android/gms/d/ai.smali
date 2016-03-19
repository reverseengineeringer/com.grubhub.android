.class final Lcom/google/android/gms/d/ai;
.super Lcom/google/android/gms/d/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ac",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/z",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/d/ac;-><init>(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/ai;->a:Lcom/google/android/gms/common/api/z;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/z;->a(Ljava/lang/Object;)V

    return-void
.end method
