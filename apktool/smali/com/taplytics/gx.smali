.class Lcom/taplytics/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/gw;


# direct methods
.method constructor <init>(Lcom/taplytics/gw;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    iget-object v0, v0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Z)Z

    .line 645
    iget-object v0, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    iget-object v0, v0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->g(Lcom/taplytics/gq;)Lcom/taplytics/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/jo;->a()V

    .line 647
    iget-object v0, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    iget-object v0, v0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    iget-object v1, v1, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v1, v1, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v1, v1, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/js;->a(Lcom/taplytics/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    iget-object v0, v0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taplytics/gx;->a:Lcom/taplytics/gw;

    iget-object v1, v1, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v1, v1, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v1, v1, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/js;->b(Lcom/taplytics/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    return-void
.end method
