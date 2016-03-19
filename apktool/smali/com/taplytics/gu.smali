.class Lcom/taplytics/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/view/MotionEvent;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/os/Handler;

.field final synthetic f:Lcom/taplytics/gt;


# direct methods
.method constructor <init>(Lcom/taplytics/gt;Landroid/widget/TextView;Landroid/os/Handler;Landroid/view/MotionEvent;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iput-object p2, p0, Lcom/taplytics/gu;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/taplytics/gu;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/taplytics/gu;->c:Landroid/view/MotionEvent;

    iput-object p5, p0, Lcom/taplytics/gu;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/taplytics/gu;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 603
    iget-object v0, p0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Z)Z

    .line 604
    iget-object v0, p0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v0, v1}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;Z)Z

    .line 606
    new-instance v0, Lcom/taplytics/gv;

    invoke-direct {v0, p0}, Lcom/taplytics/gv;-><init>(Lcom/taplytics/gu;)V

    .line 618
    iget-object v1, p0, Lcom/taplytics/gu;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    iget-object v0, p0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v0, v0, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    iget-object v1, p0, Lcom/taplytics/gu;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/taplytics/gu;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/taplytics/gu;->f:Lcom/taplytics/gt;

    iget-object v3, v3, Lcom/taplytics/gt;->a:Lcom/taplytics/gq;

    invoke-static {v3}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;FFLandroid/view/ViewGroup;)Lorg/json/JSONArray;

    move-result-object v0

    .line 622
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->l()Lcom/taplytics/hn;

    move-result-object v1

    new-instance v2, Lcom/taplytics/gw;

    invoke-direct {v2, p0}, Lcom/taplytics/gw;-><init>(Lcom/taplytics/gu;)V

    invoke-virtual {v1, v0, v2}, Lcom/taplytics/hn;->a(Lorg/json/JSONArray;Lcom/taplytics/ik;)V

    .line 654
    return-void
.end method
