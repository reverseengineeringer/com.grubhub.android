.class Lcom/taplytics/ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/support/v4/view/bi;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/view/ViewGroup;Landroid/support/v4/view/bi;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/taplytics/ka;->a:Landroid/support/v4/view/ViewPager;

    .line 467
    iput-object p2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    .line 468
    iput-object p3, p0, Lcom/taplytics/ka;->c:Landroid/support/v4/view/bi;

    .line 469
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ka;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 477
    const-string v0, ""

    .line 478
    iget-object v2, p0, Lcom/taplytics/ka;->c:Landroid/support/v4/view/bi;

    invoke-static {v2, v1}, Lcom/taplytics/jy;->a(Landroid/support/v4/view/bi;I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 479
    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_viewpager_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fq;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 491
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 492
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/taplytics/jy;->a(ILjava/lang/Object;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/taplytics/ka;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/taplytics/jy;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v1, "frg"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 494
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fq;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fq;->b()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 496
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/taplytics/jy;->a(I)V

    .line 497
    iget-object v2, p0, Lcom/taplytics/ka;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/taplytics/jy;->a(ILjava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/taplytics/ka;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/taplytics/jy;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
