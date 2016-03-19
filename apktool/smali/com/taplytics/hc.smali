.class Lcom/taplytics/hc;
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
    .line 911
    iput-object p1, p0, Lcom/taplytics/hc;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/hc;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->m(Lcom/taplytics/gq;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 916
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 917
    iget-object v1, p0, Lcom/taplytics/hc;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->n(Lcom/taplytics/gq;)I

    move-result v1

    int-to-float v1, v1

    .line 918
    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 919
    iget-object v1, p0, Lcom/taplytics/hc;->a:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->m(Lcom/taplytics/gq;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 920
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 921
    new-instance v1, Lcom/taplytics/hd;

    invoke-direct {v1, p0}, Lcom/taplytics/hd;-><init>(Lcom/taplytics/hc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 937
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    const-string v0, "delay image hidden"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/taplytics/hc;->a:Lcom/taplytics/gq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :cond_1
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v0

    .line 944
    const-string v1, "Delay view error"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
