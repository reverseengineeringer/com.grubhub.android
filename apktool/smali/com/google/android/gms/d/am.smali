.class public final Lcom/google/android/gms/d/am;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/j",
            "<",
            "Lcom/google/android/gms/d/as;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/d/an;

.field private static final d:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<",
            "Lcom/google/android/gms/d/as;",
            "Lcom/google/android/gms/common/api/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/j;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/am;->a:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/d/am$1;

    invoke-direct {v0}, Lcom/google/android/gms/d/am$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/am;->d:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/c;

    const-string v1, "Common.API"

    sget-object v2, Lcom/google/android/gms/d/am;->d:Lcom/google/android/gms/common/api/k;

    sget-object v3, Lcom/google/android/gms/d/am;->a:Lcom/google/android/gms/common/api/j;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/j;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/d/am;->b:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/d/ao;

    invoke-direct {v0}, Lcom/google/android/gms/d/ao;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/am;->c:Lcom/google/android/gms/d/an;

    return-void
.end method
