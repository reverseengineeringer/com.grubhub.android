.class Lcom/taplytics/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ik;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/taplytics/ch;


# direct methods
.method constructor <init>(Lcom/taplytics/ch;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iput-object p2, p0, Lcom/taplytics/ci;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 729
    const-string v0, "Flushing Event Queue"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 730
    iget-object v0, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v0, v0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    iget-object v1, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v1, v1, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    invoke-static {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;Lcom/taplytics/eq;)V

    .line 731
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 713
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    const-string v0, "Flushed Event Queue!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v0, v0, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v0, v0, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    invoke-interface {v0}, Lcom/taplytics/eq;->a()V

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v0, v0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    invoke-static {v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/ci;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taplytics/bw;->b(I)V

    .line 722
    iget-object v0, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v0, v0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    invoke-static {v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/bw;->b()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 723
    iget-object v0, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v0, v0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    iget-object v1, p0, Lcom/taplytics/ci;->b:Lcom/taplytics/ch;

    iget-object v1, v1, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    invoke-static {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;Lcom/taplytics/eq;)V

    .line 725
    :cond_2
    return-void
.end method
