.class Lcom/taplytics/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/es;


# instance fields
.field final synthetic a:Lcom/taplytics/gh;


# direct methods
.method constructor <init>(Lcom/taplytics/gh;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/taplytics/gj;->a:Lcom/taplytics/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/taplytics/gj;->a:Lcom/taplytics/gh;

    iget-object v0, v0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/taplytics/gj;->a:Lcom/taplytics/gh;

    iget-object v0, v0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    invoke-virtual {v0}, Lcom/taplytics/c;->a()V

    .line 922
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/taplytics/gj;->a:Lcom/taplytics/gh;

    iget-object v0, v0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/taplytics/gj;->a:Lcom/taplytics/gh;

    iget-object v0, v0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    invoke-virtual {v0}, Lcom/taplytics/c;->a()V

    .line 929
    :cond_0
    return-void
.end method
