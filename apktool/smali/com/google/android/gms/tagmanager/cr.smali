.class Lcom/google/android/gms/tagmanager/cr;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/d/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/bq;Lcom/google/android/gms/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;",
            "Lcom/google/android/gms/d/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cr;->a:Lcom/google/android/gms/tagmanager/bq;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cr;->b:Lcom/google/android/gms/d/o;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tagmanager/bq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr;->a:Lcom/google/android/gms/tagmanager/bq;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/d/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr;->b:Lcom/google/android/gms/d/o;

    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr;->a:Lcom/google/android/gms/tagmanager/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-virtual {v0}, Lcom/google/android/gms/d/o;->g()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr;->b:Lcom/google/android/gms/d/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr;->b:Lcom/google/android/gms/d/o;

    invoke-virtual {v0}, Lcom/google/android/gms/d/o;->g()I

    move-result v0

    goto :goto_0
.end method
