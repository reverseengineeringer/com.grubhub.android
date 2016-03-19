.class Lcom/taplytics/gk;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/taplytics/gk;->c:Lcom/taplytics/fy;

    iput-object p2, p0, Lcom/taplytics/gk;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taplytics/gk;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .prologue
    .line 1284
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/gk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/gk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/gq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-static {}, Lcom/taplytics/fh;->a()Lcom/taplytics/fh;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/gk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taplytics/fh;->a(Ljava/lang/String;)V

    .line 1286
    invoke-static {}, Lcom/taplytics/as;->a()Lcom/taplytics/as;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/gk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/gk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->j()V

    .line 1288
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 1289
    return-void
.end method
