.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/views/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A()Lcom/grubhub/AppBaseLibrary/android/views/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/m;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/views/m;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;Z)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a:Lcom/grubhub/AppBaseLibrary/android/views/m;

    const v1, 0x7f0f032b

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 733
    if-eqz p1, :cond_0

    .line 734
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 735
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/n;->TRUE:Lcom/grubhub/AppBaseLibrary/android/views/n;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 736
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const v2, 0x7f08018e

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 742
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 739
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/n;->FALSE:Lcom/grubhub/AppBaseLibrary/android/views/n;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 740
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const v2, 0x7f08018f

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0238

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    .line 566
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 568
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 572
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0238

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    .line 574
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 577
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "coupons"

    const-string v3, "see coupons list"

    const-string v4, "coupons_cta"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 582
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->t()V

    .line 587
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 592
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;I)I

    .line 597
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 599
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a:Lcom/grubhub/AppBaseLibrary/android/views/m;

    const v1, 0x7f0f032b

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 600
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 601
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/n;->FALSE:Lcom/grubhub/AppBaseLibrary/android/views/n;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 603
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/n;->FALSE:Lcom/grubhub/AppBaseLibrary/android/views/n;

    if-ne v0, v1, :cond_6

    move v0, v2

    .line 605
    :goto_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_0

    .line 610
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 611
    :cond_3
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    .line 622
    :cond_4
    if-eqz v0, :cond_7

    .line 623
    const-string v6, "add to favorites_cta"

    .line 624
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a(Z)V

    .line 625
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/LinkedHashSet;)V

    .line 627
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/g;->y()V

    .line 631
    :cond_5
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 634
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 642
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;

    invoke-direct {v1, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/a;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 671
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/a;->a()V

    move-object v0, v6

    .line 724
    :goto_2
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "favorites"

    const-string v4, ""

    invoke-direct {v2, v3, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 603
    goto/16 :goto_1

    .line 673
    :cond_7
    const-string v6, "tap to unfavorite_cta"

    .line 674
    invoke-direct {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a(Z)V

    .line 675
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 676
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/LinkedHashSet;)V

    .line 677
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 678
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/g;->y()V

    .line 681
    :cond_8
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 684
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 692
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;

    invoke-direct {v1, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 720
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;->a()V

    move-object v0, v6

    goto :goto_2
.end method
