.class public Lcom/google/android/gms/common/api/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/al;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/zzg;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Landroid/content/Context;

.field private d:Lcom/google/android/gms/common/ConnectionResult;

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private final i:Landroid/os/Bundle;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/j;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/gms/d/cj;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/google/android/gms/common/internal/a;

.field private p:Z

.field private q:Z

.field private final r:Lcom/google/android/gms/common/internal/i;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/c",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<+",
            "Lcom/google/android/gms/d/cj;",
            "Lcom/google/android/gms/d/ck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzg;Lcom/google/android/gms/common/internal/i;Ljava/util/Map;Lcom/google/android/gms/common/api/k;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzg;",
            "Lcom/google/android/gms/common/internal/i;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/c",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/k",
            "<+",
            "Lcom/google/android/gms/d/cj;",
            "Lcom/google/android/gms/d/ck;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->f:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/ab;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/ab;->j:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/ab;->r:Lcom/google/android/gms/common/internal/i;

    iput-object p3, p0, Lcom/google/android/gms/common/api/ab;->s:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/ab;->t:Lcom/google/android/gms/common/api/k;

    iput-object p5, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p6, p0, Lcom/google/android/gms/common/api/ab;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->c(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->j()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/ab;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/c;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/ab;->c(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lcom/google/android/gms/common/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/ab;->o:Lcom/google/android/gms/common/internal/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->n:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->p:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->q:Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->j()V

    iget v0, p0, Lcom/google/android/gms/common/api/ab;->h:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    invoke-interface {v0}, Lcom/google/android/gms/d/cj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    invoke-interface {v0}, Lcom/google/android/gms/d/cj;->b_()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    invoke-interface {v0}, Lcom/google/android/gms/d/cj;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/ab;->o:Lcom/google/android/gms/common/internal/a;

    :cond_2
    return-void
.end method

.method private a(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_1

    invoke-static {p3}, Lcom/google/android/gms/common/api/ab;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/common/api/ab;->e:I

    if-ge p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ab;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/ab;)Lcom/google/android/gms/common/api/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/c",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/c;->a()Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/k;->a()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/common/api/ab;->a(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->e:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/c;->d()Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/e;->a(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/ab;)Lcom/google/android/gms/d/cj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private c(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/ab;->f:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/ab;->f:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/ab;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ab;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/ab;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/api/ab;->l:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_GETTING_SERVICE_BINDINGS"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_VALIDATING_ACCOUNT"

    goto :goto_0

    :pswitch_2
    const-string v0, "STEP_AUTHENTICATING"

    goto :goto_0

    :pswitch_3
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->a(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/ab;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/e;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->g()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->a:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/x;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->a:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/x;->a()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->j()V

    return-void
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/ab;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/ab;->h:I

    iget v1, p0, Lcom/google/android/gms/common/api/ab;->h:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/ab;->h:I

    if-gez v1, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->h()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->h()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->n:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/common/api/ab;->h:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->f:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->h:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->g()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->o:Lcom/google/android/gms/common/internal/a;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/internal/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/ab;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->d()Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->f:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->k()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/zzg;->g:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->o:Lcom/google/android/gms/common/internal/a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->g:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/common/api/ac;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/ac;-><init>(Lcom/google/android/gms/common/api/ab;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/d/cj;->a(Lcom/google/android/gms/common/internal/a;Ljava/util/Set;Lcom/google/android/gms/signin/internal/f;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->e()V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->k()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->f:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->h:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v3, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v3, v3, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->i()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v3, v3, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v3, p0, Lcom/google/android/gms/common/api/ab;->o:Lcom/google/android/gms/common/internal/a;

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/internal/a;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->g()V

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->d()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->o:Lcom/google/android/gms/common/internal/a;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/ab;->q:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/d/cj;->a(Lcom/google/android/gms/common/internal/a;Z)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/ab;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/ab;->a(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->a:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/x;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->i:Landroid/os/Bundle;

    goto :goto_2
.end method

.method private j()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->r:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->d()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->r:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    iget-object v4, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v4, v4, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->d()Lcom/google/android/gms/common/api/j;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/j;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/i;",
            "R::",
            "Lcom/google/android/gms/common/api/v;",
            "T:",
            "Lcom/google/android/gms/common/api/y",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->a:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/x;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/ab;->m:Z

    iput-object v10, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/common/api/ab;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->l:I

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/ab;->n:Z

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/ab;->p:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->c:Lcom/google/android/gms/common/api/ah;

    new-instance v2, Lcom/google/android/gms/common/api/ab$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/common/api/ab$1;-><init>(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/ah;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->d()Lcom/google/android/gms/common/api/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/i;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->s:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->a()Lcom/google/android/gms/common/api/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/k;->a()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v5

    :goto_1
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/i;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v5, p0, Lcom/google/android/gms/common/api/ab;->m:Z

    iget v3, p0, Lcom/google/android/gms/common/api/ab;->l:I

    if-ge v8, v3, :cond_2

    iput v8, p0, Lcom/google/android/gms/common/api/ab;->l:I

    :cond_2
    if-eqz v8, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/common/api/ab;->j:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->d()Lcom/google/android/gms/common/api/j;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v3, Lcom/google/android/gms/common/api/ae;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/common/api/ae;-><init>(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/api/c;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/ab;->m:Z

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->m:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->r:Lcom/google/android/gms/common/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzg;->getSessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/common/api/af;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/common/api/af;-><init>(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/api/ab$1;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->t:Lcom/google/android/gms/common/api/k;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/zzg;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/ab;->r:Lcom/google/android/gms/common/internal/i;

    iget-object v4, p0, Lcom/google/android/gms/common/api/ab;->r:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/i;->i()Lcom/google/android/gms/d/ck;

    move-result-object v4

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/k;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cj;

    iput-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->k:Lcom/google/android/gms/d/cj;

    invoke-interface {v0}, Lcom/google/android/gms/d/cj;->g()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/ab;->h:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/p;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/api/p;)V

    goto :goto_2
.end method

.method public a(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/ak;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/ak;->f()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/ak;->b()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/ab;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->a:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ab;->d:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzg;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ab;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->i()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/c",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/ab;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/c;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ab;->i()V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Lcom/google/android/gms/common/api/y",
            "<+",
            "Lcom/google/android/gms/common/api/v;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ab;->g:Z

    return-void
.end method

.method public b(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ab;->d(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTING"

    return-object v0
.end method
