.class Lcom/taplytics/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 587
    iget-object v0, p0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->k(Lcom/taplytics/gq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 591
    iget-object v0, p0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 593
    const-string v0, "Uploading view..."

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 597
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 599
    new-instance v0, Lcom/taplytics/gu;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/taplytics/gu;-><init>(Lcom/taplytics/gt;Landroid/widget/TextView;Landroid/os/Handler;Landroid/view/MotionEvent;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 657
    const-wide/16 v4, 0x32

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
