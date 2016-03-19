.class Lcom/google/android/gms/tagmanager/eg$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/eh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/eg;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/tagmanager/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/eg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eg$2;->b:Lcom/google/android/gms/tagmanager/eg;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/eg$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/a;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/eg$2;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/a;->a()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/eg$2;->b:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/eg;->b(Lcom/google/android/gms/tagmanager/eg;)Lcom/google/android/gms/d/bc;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/d/bc;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
