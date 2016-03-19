.class public Lcom/google/android/gms/d/co;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object",
            "<",
            "Lcom/google/android/gms/d/cs;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/d/cx;

.field private final d:Lcom/google/android/gms/d/bc;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/d/cx;

    invoke-direct {v1, p1}, Lcom/google/android/gms/d/cx;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/d/bd;->c()Lcom/google/android/gms/d/bc;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/d/co;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/d/cx;Lcom/google/android/gms/d/bc;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/d/cx;Lcom/google/android/gms/d/bc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/d/cx;",
            "Lcom/google/android/gms/d/bc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/d/co;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/co;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/d/co;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/d/co;->d:Lcom/google/android/gms/d/bc;

    iput-object p3, p0, Lcom/google/android/gms/d/co;->c:Lcom/google/android/gms/d/cx;

    iput-object p2, p0, Lcom/google/android/gms/d/co;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/co;->e:Ljava/lang/String;

    return-void
.end method
