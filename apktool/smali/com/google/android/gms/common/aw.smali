.class final Lcom/google/android/gms/common/aw;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lcom/google/android/gms/common/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/j;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/aw$1;

    const-string v3, "0\u0082\u0002R0\u0082\u0001\u00bb\u0002\u0004I4\u0098~0\r\u0006\t*\u0086H\u0086\u00f7\r\u0001"

    invoke-static {v3}, Lcom/google/android/gms/common/j;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/aw$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/aw$2;

    const-string v3, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0084~O\u00f2\u00d6\u00b5\u00de\u008e0"

    invoke-static {v3}, Lcom/google/android/gms/common/j;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/aw$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/aw;->a:[Lcom/google/android/gms/common/j;

    return-void
.end method
