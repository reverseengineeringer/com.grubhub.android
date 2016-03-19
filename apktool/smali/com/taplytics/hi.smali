.class Lcom/taplytics/hi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/taplytics/hi;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/taplytics/hi;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/taplytics/hi;->a:Lcom/taplytics/gq;

    invoke-static {}, Lcom/taplytics/jk;->c()Lcom/taplytics/jw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Lcom/taplytics/jw;)Lcom/taplytics/jw;

    .line 547
    iget-object v0, p0, Lcom/taplytics/hi;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hi;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->j(Lcom/taplytics/gq;)Lcom/taplytics/jw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    :cond_0
    return-void
.end method
