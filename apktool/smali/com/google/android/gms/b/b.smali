.class public final Lcom/google/android/gms/b/b;
.super Lcom/google/android/gms/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/g;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Landroid/os/Bundle;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setObject is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setType is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Landroid/os/Bundle;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Must call setObject() with a valid app URI. Example: setObject(new Thing.Builder().setName(name).setUrl(url))"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/a;

    iget-object v1, p0, Lcom/google/android/gms/b/b;->a:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/b/a$1;)V

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/google/android/gms/b/b;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    :cond_0
    return-object p0
.end method

.method public a(Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/b;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "object"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/b/b;
    .locals 1

    const-string v0, "name"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/b;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/b;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/b;

    return-object v0
.end method

.method public synthetic b()Lcom/google/android/gms/b/f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/b;->a()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/google/android/gms/b/g;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/b;->a(Landroid/net/Uri;)Lcom/google/android/gms/b/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/google/android/gms/b/g;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/b;->a(Ljava/lang/String;)Lcom/google/android/gms/b/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/g;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/b/b;->a(Ljava/lang/String;Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/b;

    move-result-object v0

    return-object v0
.end method
