.class Lcom/google/android/gms/d/bs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/d/bs;->a(Lcom/google/android/gms/d/bo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/d/bo;

.field final synthetic b:Lcom/google/android/gms/d/bs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/bs;Lcom/google/android/gms/d/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/bs$1;->b:Lcom/google/android/gms/d/bs;

    iput-object p2, p0, Lcom/google/android/gms/d/bs$1;->a:Lcom/google/android/gms/d/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/d/bs$1;->a:Lcom/google/android/gms/d/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/d/bo;->h()Lcom/google/android/gms/d/br;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/d/bs$1;->a:Lcom/google/android/gms/d/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/br;->a(Lcom/google/android/gms/d/bo;)V

    iget-object v0, p0, Lcom/google/android/gms/d/bs$1;->b:Lcom/google/android/gms/d/bs;

    invoke-static {v0}, Lcom/google/android/gms/d/bs;->a(Lcom/google/android/gms/d/bs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/bw;

    iget-object v2, p0, Lcom/google/android/gms/d/bs$1;->a:Lcom/google/android/gms/d/bo;

    invoke-interface {v0, v2}, Lcom/google/android/gms/d/bw;->a(Lcom/google/android/gms/d/bo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/bs$1;->b:Lcom/google/android/gms/d/bs;

    iget-object v1, p0, Lcom/google/android/gms/d/bs$1;->a:Lcom/google/android/gms/d/bo;

    invoke-static {v0, v1}, Lcom/google/android/gms/d/bs;->a(Lcom/google/android/gms/d/bs;Lcom/google/android/gms/d/bo;)V

    return-void
.end method
