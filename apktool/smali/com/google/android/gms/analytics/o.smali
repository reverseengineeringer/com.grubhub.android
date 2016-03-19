.class public Lcom/google/android/gms/analytics/o;
.super Lcom/google/android/gms/d/br;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/br",
        "<",
        "Lcom/google/android/gms/analytics/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/v;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/v;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/v;->h()Lcom/google/android/gms/d/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/v;->d()Lcom/google/android/gms/d/bc;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/d/br;-><init>(Lcom/google/android/gms/d/bs;Lcom/google/android/gms/d/bc;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/bo;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/d/v;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/bo;->b(Ljava/lang/Class;)Lcom/google/android/gms/d/bq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/v;

    invoke-virtual {v0}, Lcom/google/android/gms/d/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/v;->p()Lcom/google/android/gms/analytics/internal/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/af;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/v;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/o;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/d/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/v;->o()Lcom/google/android/gms/analytics/internal/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/d/v;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/v;->a(Z)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/o;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/o;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/p;

    iget-object v2, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/p;-><init>(Lcom/google/android/gms/analytics/internal/v;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/o;->c:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/analytics/p;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/o;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/bx;

    invoke-interface {v0}, Lcom/google/android/gms/d/bx;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method k()Lcom/google/android/gms/analytics/internal/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/d/bo;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/o;->m()Lcom/google/android/gms/d/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/d/bo;->a()Lcom/google/android/gms/d/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/v;->q()Lcom/google/android/gms/analytics/internal/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ac;->b()Lcom/google/android/gms/d/by;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/bo;->a(Lcom/google/android/gms/d/bq;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/o;->b:Lcom/google/android/gms/analytics/internal/v;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/v;->r()Lcom/google/android/gms/analytics/internal/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/an;->a()Lcom/google/android/gms/d/ca;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/bo;->a(Lcom/google/android/gms/d/bq;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/o;->b(Lcom/google/android/gms/d/bo;)V

    return-object v0
.end method
