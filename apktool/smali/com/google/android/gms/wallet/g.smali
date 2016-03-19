.class public final Lcom/google/android/gms/wallet/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/wallet/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/wallet/f;

.field public static final c:Lcom/google/android/gms/wallet/wobs/k;

.field public static final d:Lcom/google/android/gms/wallet/firstparty/a;

.field private static final e:Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/j",
            "<",
            "Lcom/google/android/gms/d/dv;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<",
            "Lcom/google/android/gms/d/dv;",
            "Lcom/google/android/gms/wallet/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/j;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/g;->e:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/wallet/g$1;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/g$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/g;->f:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/c;

    const-string v1, "Wallet.API"

    sget-object v2, Lcom/google/android/gms/wallet/g;->f:Lcom/google/android/gms/common/api/k;

    sget-object v3, Lcom/google/android/gms/wallet/g;->e:Lcom/google/android/gms/common/api/j;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/j;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/d/du;

    invoke-direct {v0}, Lcom/google/android/gms/d/du;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    new-instance v0, Lcom/google/android/gms/d/ea;

    invoke-direct {v0}, Lcom/google/android/gms/d/ea;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/g;->c:Lcom/google/android/gms/wallet/wobs/k;

    new-instance v0, Lcom/google/android/gms/d/dz;

    invoke-direct {v0}, Lcom/google/android/gms/d/dz;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/g;->d:Lcom/google/android/gms/wallet/firstparty/a;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/j;
    .locals 1

    sget-object v0, Lcom/google/android/gms/wallet/g;->e:Lcom/google/android/gms/common/api/j;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/wallet/g;->b:Lcom/google/android/gms/wallet/f;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
