.class public Lcom/google/android/gms/d/dy;
.super Lcom/google/android/gms/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/c/l",
        "<",
        "Lcom/google/android/gms/d/dl;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/d/dy;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/l;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/c/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/d/df;)Lcom/google/android/gms/d/dc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/c;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/c;-><init>(I)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/d/dy;->a()Lcom/google/android/gms/d/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/d/dy;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/dl;

    invoke-static {p0}, Lcom/google/android/gms/c/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/g;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/d/dl;->a(Lcom/google/android/gms/c/g;Lcom/google/android/gms/c/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/d/df;)Lcom/google/android/gms/d/dc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/c/m; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a()Lcom/google/android/gms/d/dy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/d/dy;->a:Lcom/google/android/gms/d/dy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/d/dy;

    invoke-direct {v0}, Lcom/google/android/gms/d/dy;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/dy;->a:Lcom/google/android/gms/d/dy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/d/dy;->a:Lcom/google/android/gms/d/dy;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/dy;->b(Landroid/os/IBinder;)Lcom/google/android/gms/d/dl;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/d/dl;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/d/dm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/dl;

    move-result-object v0

    return-object v0
.end method
