.class Lcom/taplytics/hg;
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
    .line 405
    iput-object p1, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    invoke-virtual {v1}, Lcom/taplytics/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->d(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    const-string v1, "waiting.."

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->e(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    const-string v1, "waiting..."

    invoke-static {v0, v1}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Experiment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v2}, Lcom/taplytics/gq;->d(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/hg;->a:Lcom/taplytics/gq;

    invoke-static {v2}, Lcom/taplytics/gq;->e(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_2
    return-void
.end method
