.class Lcom/taplytics/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/gu;


# direct methods
.method constructor <init>(Lcom/taplytics/gu;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/taplytics/gv;->a:Lcom/taplytics/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 608
    iget-object v0, p0, Lcom/taplytics/gv;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->l(Lcom/taplytics/gq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/taplytics/gv;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/taplytics/gv;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/taplytics/gv;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/taplytics/gv;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    :cond_1
    return-void
.end method
