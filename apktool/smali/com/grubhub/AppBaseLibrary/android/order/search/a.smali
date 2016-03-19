.class Lcom/grubhub/AppBaseLibrary/android/order/search/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$1;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;
    .locals 4

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->getItemViewType(I)I

    move-result v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->getItemViewType(I)I

    move-result v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->NOT_AVAILABLE_YET:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 506
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 507
    if-lez v1, :cond_2

    add-int/lit8 v3, p1, -0x1

    if-ge v3, v1, :cond_2

    .line 508
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    .line 516
    :cond_1
    :goto_0
    return-object v0

    .line 509
    :cond_2
    if-nez v1, :cond_3

    add-int/lit8 v3, p1, -0x2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, v2, :cond_3

    .line 510
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    goto :goto_0

    .line 511
    :cond_3
    if-lez v1, :cond_1

    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x2

    if-ge v3, v2, :cond_1

    .line 512
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 446
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v0

    .line 452
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 454
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 459
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->u()Ljava/lang/String;

    move-result-object v4

    .line 462
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    .line 463
    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getMinimum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getMinimum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 465
    :goto_2
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_2

    .line 466
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 464
    goto :goto_2

    .line 474
    :cond_2
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->notifyDataSetChanged()V

    .line 481
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 498
    return v0

    .line 489
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 522
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 527
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 529
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->CATEGORY:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v0

    .line 535
    :goto_0
    return v0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 531
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE_DESCRIPTION:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v0

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_4

    .line 533
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v0

    goto :goto_0

    .line 535
    :cond_4
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->NOT_AVAILABLE_YET:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v4, 0x7f0f02c9

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 541
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 542
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->getItemViewType(I)I

    move-result v0

    .line 544
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->CATEGORY:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 545
    if-nez p2, :cond_0

    .line 546
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030086

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 549
    :cond_0
    const v0, 0x7f0f02ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 552
    if-nez p1, :cond_2

    .line 553
    const v2, 0x7f080118

    .line 554
    const v1, 0x7f080175

    .line 559
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 562
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 614
    :cond_1
    :goto_1
    return-object p2

    .line 556
    :cond_2
    const v2, 0x7f08011a

    .line 557
    const v1, 0x7f080176

    goto :goto_0

    .line 567
    :cond_3
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE_DESCRIPTION:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 568
    if-nez p2, :cond_1

    .line 569
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030085

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 572
    :cond_4
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 573
    if-nez p2, :cond_5

    .line 574
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030084

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 577
    :cond_5
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    move-result-object v3

    .line 578
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 579
    const v1, 0x7f0f02c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 581
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 582
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 583
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 585
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 588
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 590
    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 592
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 595
    :cond_8
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->NOT_AVAILABLE_YET:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 596
    if-nez p2, :cond_9

    .line 597
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 600
    :cond_9
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    move-result-object v1

    .line 601
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 603
    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 604
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 609
    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->values()[Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/order/search/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
