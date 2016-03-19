.class public final Lcom/google/android/gms/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/f;",
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

.field public static final c:Lcom/google/android/gms/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/d;->b:Lcom/google/android/gms/common/api/c;

    sput-object v0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/common/api/c;

    sget-object v0, Lcom/google/android/gms/appdatasearch/d;->b:Lcom/google/android/gms/common/api/c;

    sput-object v0, Lcom/google/android/gms/b/c;->b:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/d/af;

    invoke-direct {v0}, Lcom/google/android/gms/d/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/c;->c:Lcom/google/android/gms/b/d;

    return-void
.end method
