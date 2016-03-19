.class Landroid/support/v4/view/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ca;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/bq;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/bj;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 864
    invoke-interface {p1}, Landroid/support/v4/view/bj;->b()I

    move-result v2

    .line 865
    invoke-interface {p1}, Landroid/support/v4/view/bj;->a()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/bj;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 867
    if-nez v3, :cond_1

    move v0, v1

    .line 871
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    if-gez p2, :cond_2

    .line 869
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 871
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/bj;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    invoke-interface {p1}, Landroid/support/v4/view/bj;->e()I

    move-result v2

    .line 877
    invoke-interface {p1}, Landroid/support/v4/view/bj;->d()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/bj;->f()I

    move-result v4

    sub-int/2addr v3, v4

    .line 879
    if-nez v3, :cond_1

    move v0, v1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    if-gez p2, :cond_2

    .line 881
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 883
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .prologue
    .line 509
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 448
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/bh;)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/bq;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/support/v4/view/bq;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 397
    instance-of v0, p1, Landroid/support/v4/view/bj;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/bj;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/bq;->a(Landroid/support/v4/view/bj;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 437
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 401
    instance-of v0, p1, Landroid/support/v4/view/bj;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/bj;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/bq;->b(Landroid/support/v4/view/bj;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public f(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public i(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 655
    invoke-static {p1}, Landroid/support/v4/view/cb;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)Landroid/support/v4/view/dq;
    .locals 1

    .prologue
    .line 660
    new-instance v0, Landroid/support/v4/view/dq;

    invoke-direct {v0, p1}, Landroid/support/v4/view/dq;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public o(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public r(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 837
    instance-of v0, p1, Landroid/support/v4/view/bd;

    if-eqz v0, :cond_0

    .line 838
    check-cast p1, Landroid/support/v4/view/bd;

    invoke-interface {p1}, Landroid/support/v4/view/bd;->isNestedScrollingEnabled()Z

    move-result v0

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 896
    instance-of v0, p1, Landroid/support/v4/view/bd;

    if-eqz v0, :cond_0

    .line 897
    check-cast p1, Landroid/support/v4/view/bd;

    invoke-interface {p1}, Landroid/support/v4/view/bd;->stopNestedScroll()V

    .line 899
    :cond_0
    return-void
.end method
