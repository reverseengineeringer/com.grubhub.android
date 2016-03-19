.class public final Lcom/google/android/gms/b/a;
.super Lcom/google/android/gms/b/f;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/f;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/b/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/b/a;
    .locals 3

    new-instance v1, Lcom/google/android/gms/b/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/b/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/g;->b(Ljava/lang/String;)Lcom/google/android/gms/b/g;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/b/g;->c(Ljava/lang/String;)Lcom/google/android/gms/b/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/b/g;->b(Landroid/net/Uri;)Lcom/google/android/gms/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/g;->b()Lcom/google/android/gms/b/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/f;)Lcom/google/android/gms/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/b;->a()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
