.class Lcom/google/android/gms/tagmanager/cp$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$4;->a:Lcom/google/android/gms/tagmanager/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/d/cu;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ci;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/cu;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ci;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ci;->e()Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cg;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ci;->f()Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cg;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
