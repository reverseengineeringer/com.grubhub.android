.class public Lcom/google/android/gms/b/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/g;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/gms/b/f;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/f;

    iget-object v1, p0, Lcom/google/android/gms/b/g;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/f;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Lcom/google/android/gms/b/g;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/b/g;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    return-object p0
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/g;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/g;->a:Landroid/os/Bundle;

    iget-object v1, p2, Lcom/google/android/gms/b/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/gms/b/g;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/g;

    :cond_0
    return-object p0
.end method
