.class public abstract Lcom/google/android/gms/wallet/j;
.super Lcom/google/android/gms/common/api/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/v;",
        ">",
        "Lcom/google/android/gms/common/api/y",
        "<TR;",
        "Lcom/google/android/gms/d/dv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/wallet/g;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/y;-><init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method
