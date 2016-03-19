.class public final Lcom/google/android/gms/d/ca;
.super Lcom/google/android/gms/d/bq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/bq",
        "<",
        "Lcom/google/android/gms/d/ca;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/d/ca;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/d/ca;->a:I

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/gms/d/bq;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/d/ca;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/ca;->a(Lcom/google/android/gms/d/ca;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/d/ca;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/d/ca;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/d/ca;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/ca;->a(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/d/ca;->b:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/d/ca;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/ca;->b(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/d/ca;->c:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/d/ca;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/ca;->c(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/d/ca;->d:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/d/ca;->d:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/ca;->d(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/d/ca;->e:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/d/ca;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/ca;->e(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/d/ca;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/d/ca;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/ca;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/ca;->f:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/d/ca;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/d/ca;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/d/ca;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/d/ca;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/d/ca;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/d/ca;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/d/ca;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/d/ca;->e:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/ca;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/d/ca;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/d/ca;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/d/ca;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/d/ca;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/d/ca;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/d/ca;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/d/ca;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
