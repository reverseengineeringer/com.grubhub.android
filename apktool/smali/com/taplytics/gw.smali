.class Lcom/taplytics/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ik;


# instance fields
.field final synthetic a:Lcom/taplytics/gu;


# direct methods
.method constructor <init>(Lcom/taplytics/gu;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 637
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;Z)Z

    .line 639
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->d:Landroid/widget/TextView;

    const-string v1, "There has been an error uploading your view."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    const-string v1, "Please try again."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    new-instance v0, Lcom/taplytics/gx;

    invoke-direct {v0, p0}, Lcom/taplytics/gx;-><init>(Lcom/taplytics/gw;)V

    .line 651
    iget-object v1, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v1, v1, Lcom/taplytics/gu;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 652
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "Sent view to server."

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v1, v1, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v1, v1, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/js;->a(Lcom/taplytics/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v1, v1, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v1, v1, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/js;->b(Lcom/taplytics/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->g(Lcom/taplytics/gq;)Lcom/taplytics/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/jo;->a()V

    .line 631
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0, v2}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Z)Z

    .line 632
    iget-object v0, p0, Lcom/taplytics/gw;->a:Lcom/taplytics/gu;

    iget-object v0, v0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0, v2}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;Z)Z

    .line 633
    return-void
.end method
