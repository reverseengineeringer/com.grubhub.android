.class final Lcom/google/android/gms/common/internal/p;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/n;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q;->b()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q;->d()V

    return-void
.end method

.method private b(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/p;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/p;->a(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/p;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/n;)Lcom/google/android/gms/common/api/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/p;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/n;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->b(Lcom/google/android/gms/common/internal/n;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->b(Lcom/google/android/gms/common/internal/n;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/n;IILandroid/os/IInterface;)Z

    goto :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/p;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/p;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q;->c()V

    goto :goto_0

    :cond_8
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
