.class Lcom/google/android/gms/tagmanager/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/ay",
        "<",
        "Lcom/google/android/gms/d/cn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ei;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/tagmanager/eg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/ei;-><init>(Lcom/google/android/gms/tagmanager/eg;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/d/cn;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ei;->a:Lcom/google/android/gms/tagmanager/eg;

    iget-wide v2, p1, Lcom/google/android/gms/d/cn;->a:J

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;Lcom/google/android/gms/d/m;JZ)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    new-instance v0, Lcom/google/android/gms/d/m;

    invoke-direct {v0}, Lcom/google/android/gms/d/m;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/i;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/d/m;->a:[Lcom/google/android/gms/d/l;

    iget-object v1, v1, Lcom/google/android/gms/d/i;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/d/m;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/tagmanager/az;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ei;->a:Lcom/google/android/gms/tagmanager/eg;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eg;->c(Lcom/google/android/gms/tagmanager/eg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ei;->a:Lcom/google/android/gms/tagmanager/eg;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/eg;->a(Lcom/google/android/gms/tagmanager/eg;J)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/d/cn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/ei;->a(Lcom/google/android/gms/d/cn;)V

    return-void
.end method
