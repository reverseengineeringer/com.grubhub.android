.class Lcom/google/android/gms/maps/i;
.super Lcom/google/android/gms/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/c/b",
        "<",
        "Lcom/google/android/gms/maps/h;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/k",
            "<",
            "Lcom/google/android/gms/maps/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/app/Activity;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/i;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/i;->i()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/i;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/i;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/c/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/k",
            "<",
            "Lcom/google/android/gms/maps/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/c/k;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/i;->i()V

    return-void
.end method

.method public a(Lcom/google/android/gms/maps/e;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/i;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/i;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/h;->a(Lcom/google/android/gms/maps/e;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/i;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/c/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/i;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/d;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/i;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/cw;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/i;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/c/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/ak;->b(Lcom/google/android/gms/c/g;)Lcom/google/android/gms/maps/internal/j;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/c/k;

    new-instance v2, Lcom/google/android/gms/maps/h;

    iget-object v3, p0, Lcom/google/android/gms/maps/i;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/h;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/j;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/c/k;->a(Lcom/google/android/gms/c/a;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/e;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/i;->a()Lcom/google/android/gms/c/a;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/h;->a(Lcom/google/android/gms/maps/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
