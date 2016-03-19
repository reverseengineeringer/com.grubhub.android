.class Lcom/google/android/gms/tagmanager/ej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/ay",
        "<",
        "Lcom/google/android/gms/d/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/tagmanager/eg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/ej;-><init>(Lcom/google/android/gms/tagmanager/eg;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/d/m;)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eg;->d(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/d/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/i;

    if-nez v0, :cond_0

    const-string v0, "Current resource is null; network resource is also null"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;J)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eg;->d(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/d/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/i;

    iput-object v0, p1, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/i;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/eg;->b(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/d/bc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/d/bc;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/d/m;JZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting refresh time to current time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/eg;->e(Lcom/google/android/gms/tagmanager/eg;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eg;->f(Lcom/google/android/gms/tagmanager/eg;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/d/m;)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/tagmanager/az;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/tagmanager/ed;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/tagmanager/ed;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/common/api/v;)V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;J)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ej;->a:Lcom/google/android/gms/tagmanager/eg;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/eg;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/common/api/v;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/d/m;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/ej;->a(Lcom/google/android/gms/d/m;)V

    return-void
.end method
