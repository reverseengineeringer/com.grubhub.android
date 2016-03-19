.class public Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/order/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

.field private m:Lcom/grubhub/AppBaseLibrary/android/order/e;

.field private n:Landroid/widget/ListView;

.field private o:Landroid/view/View;

.field private p:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 797
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    return-object p1
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 1

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 648
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderPaymentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    return-object p1
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 360
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->h:Z

    .line 361
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->g:Z

    .line 363
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getTimePlacedMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 365
    invoke-direct {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;I)V

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(I)V

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->g:Z

    .line 371
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b()V

    goto :goto_0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 8

    .prologue
    const v3, 0x7f0f0318

    const v4, 0x7f0f0317

    const/4 v7, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_2

    .line 432
    if-eqz p1, :cond_3

    .line 434
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 435
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$15;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->i:Landroid/view/View$OnClickListener;

    .line 445
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$2;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->h:Z

    .line 473
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->o:Landroid/view/View;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 476
    :cond_2
    return-void

    .line 459
    :cond_3
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->h:Z

    if-nez v1, :cond_1

    .line 461
    const v1, 0x7f08036e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$3;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->i:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;->g()V

    .line 390
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$12;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    .line 399
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;I)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 413
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$14;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 419
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;->a()V

    .line 421
    :cond_1
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
    .locals 7

    .prologue
    .line 495
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 497
    const/4 v6, 0x0

    .line 499
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    move-object v0, p1

    .line 501
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v6

    .line 505
    :cond_0
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getDinerName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getDinerPhone()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;->getDelivery()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 507
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 7

    .prologue
    .line 513
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->V()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 517
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 518
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 519
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    :cond_0
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->h:Z

    .line 286
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->f:Z

    .line 288
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b:Ljava/lang/String;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$9;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 306
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 324
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a()V

    .line 326
    :cond_1
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)Z
    .locals 2

    .prologue
    .line 484
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_0

    .line 485
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->isOrderTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 10

    .prologue
    .line 535
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$4;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    new-instance v9, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$5;

    invoke-direct {v9, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 554
    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    invoke-virtual {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 564
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 565
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 609
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a()V

    .line 610
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    .line 343
    :goto_0
    if-eqz p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 350
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(I)V

    .line 351
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 633
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 634
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 8

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    sget-object v7, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Landroid/content/Intent;

    move-result-object v0

    .line 625
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->startActivity(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c()V

    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Lcom/grubhub/AppBaseLibrary/android/order/e;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/e;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->n:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f030094

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 264
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 271
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 275
    :goto_1
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/b;

    .line 267
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 145
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/e;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/e;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/e;

    .line 148
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    if-eqz p1, :cond_0

    .line 106
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->d:Ljava/util/ArrayList;

    .line 112
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->setHasOptionsMenu(Z)V

    .line 116
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/e;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/e;->d(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 120
    const v0, 0x7f030060

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->p:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/at;)V

    .line 133
    const v0, 0x7f0300ab

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->o:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    const v1, 0x7f0f01c4

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->n:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    const v3, 0x7f030094

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0

    .line 124
    nop

    :array_0
    .array-data 4
        0x7f0d0050
        0x7f0d004f
        0x7f0d0050
        0x7f0d004f
    .end array-data
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/e;

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 249
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c()V

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 234
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 240
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 241
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 243
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/e;->d(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 218
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 161
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->f:Z

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Z)V

    .line 170
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "order tracking status"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 173
    return-void

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->g:Z

    if-nez v0, :cond_1

    .line 164
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Z)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->g()V

    .line 192
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;->g()V

    .line 198
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/b;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->g()V

    .line 203
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 207
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_3

    .line 208
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 210
    :cond_3
    return-void
.end method
