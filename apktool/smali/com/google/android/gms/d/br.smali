.class public abstract Lcom/google/android/gms/d/br;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/d/br;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/d/bo;

.field private final b:Lcom/google/android/gms/d/bs;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/d/bs;Lcom/google/android/gms/d/bc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/d/br;->b:Lcom/google/android/gms/d/bs;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/br;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/d/bo;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/d/bo;-><init>(Lcom/google/android/gms/d/br;Lcom/google/android/gms/d/bc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/d/bo;->k()V

    iput-object v0, p0, Lcom/google/android/gms/d/br;->a:Lcom/google/android/gms/d/bo;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/bo;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/google/android/gms/d/bo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/d/br;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/bp;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/d/bp;->a(Lcom/google/android/gms/d/br;Lcom/google/android/gms/d/bo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Lcom/google/android/gms/d/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/br;->a:Lcom/google/android/gms/d/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/d/bo;->a()Lcom/google/android/gms/d/bo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/d/br;->b(Lcom/google/android/gms/d/bo;)V

    return-object v0
.end method

.method public m()Lcom/google/android/gms/d/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/br;->a:Lcom/google/android/gms/d/bo;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/bx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/br;->a:Lcom/google/android/gms/d/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/d/bo;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lcom/google/android/gms/d/bs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/br;->b:Lcom/google/android/gms/d/bs;

    return-object v0
.end method
