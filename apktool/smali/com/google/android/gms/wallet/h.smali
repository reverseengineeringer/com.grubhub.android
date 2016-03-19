.class public final Lcom/google/android/gms/wallet/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/i;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/i;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/h;-><init>(Lcom/google/android/gms/wallet/i;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/g$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/wallet/h;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/wallet/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/wallet/i;->a(Lcom/google/android/gms/wallet/i;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/h;->a:I

    invoke-static {p1}, Lcom/google/android/gms/wallet/i;->b(Lcom/google/android/gms/wallet/i;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/h;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/i;Lcom/google/android/gms/wallet/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/h;-><init>(Lcom/google/android/gms/wallet/i;)V

    return-void
.end method
