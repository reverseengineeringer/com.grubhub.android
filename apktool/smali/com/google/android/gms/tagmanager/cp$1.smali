.class Lcom/google/android/gms/tagmanager/cp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/eb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Lcom/google/android/gms/d/cs;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/y;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/eb",
        "<",
        "Lcom/google/android/gms/d/cq;",
        "Lcom/google/android/gms/tagmanager/bq",
        "<",
        "Lcom/google/android/gms/d/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$1;->a:Lcom/google/android/gms/tagmanager/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/d/cq;Lcom/google/android/gms/tagmanager/bq;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/cq;",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-virtual {v0}, Lcom/google/android/gms/d/o;->g()I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/d/cq;

    check-cast p2, Lcom/google/android/gms/tagmanager/bq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cp$1;->a(Lcom/google/android/gms/d/cq;Lcom/google/android/gms/tagmanager/bq;)I

    move-result v0

    return v0
.end method
