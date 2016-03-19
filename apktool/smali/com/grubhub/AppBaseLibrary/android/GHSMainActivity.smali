.class public Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/p;
.implements Lcom/grubhub/AppBaseLibrary/android/e;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/c;
.implements Lcom/grubhub/AppBaseLibrary/android/order/e;
.implements Lcom/grubhub/AppBaseLibrary/android/order/h;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/g;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/h;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/l;


# instance fields
.field public d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    const v2, 0x7f0f008c

    .line 399
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    .line 402
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(ILandroid/support/v4/widget/DrawerLayout;)V

    .line 403
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Landroid/support/v4/widget/p;)V

    .line 404
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 559
    new-instance v0, Lorg/b/a/c;

    invoke-direct {v0}, Lorg/b/a/c;-><init>()V

    invoke-static {v0}, Lorg/b/a/a;->a(Lorg/b/a/d;)V

    .line 560
    invoke-static {v1}, Lorg/b/a/a;->b(Z)V

    .line 561
    invoke-static {v1}, Lorg/b/a/a;->a(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lorg/b/a/a;->a(I)V

    .line 563
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lorg/b/a/a;->b(I)V

    .line 564
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "search_query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "deep_link_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "search_address"

    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    const-string v1, "order_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v1, "application_reset"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method private a(ZLjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    const v3, 0x7f0f0089

    const/4 v2, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 429
    invoke-virtual {v1, v3}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 432
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 435
    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p6, :cond_2

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e()V

    .line 441
    :cond_2
    if-eqz p7, :cond_4

    .line 442
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Z)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    move-result-object v0

    .line 449
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 453
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 457
    const/16 v0, -0x64

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e:I

    .line 459
    :cond_3
    return-void

    .line 443
    :cond_4
    if-eqz p2, :cond_5

    .line 444
    invoke-static {p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(ZLjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_5
    invoke-static {p1, p5, p6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(ZLjava/lang/String;Landroid/net/Uri;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 412
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(ZLjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 413
    return-void
.end method

.method private z()V
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/support/v4/app/w;->e()I

    move-result v2

    .line 301
    const/4 v0, 0x0

    .line 302
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 303
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->b(I)Landroid/support/v4/app/x;

    move-result-object v0

    .line 305
    :cond_0
    if-eqz v0, :cond_1

    .line 306
    invoke-interface {v0}, Landroid/support/v4/app/x;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_1
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public a(Ljava/lang/String;ZZLandroid/net/Uri;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 9

    .prologue
    .line 341
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V

    .line 344
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 345
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 346
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v7

    const v8, 0x7f0f0089

    iget-boolean v6, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->f:Z

    move-object v0, p1

    move-object v1, p5

    move-object v2, p6

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 347
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZLandroid/net/Uri;Z)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    .line 355
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v7, v8, v0, v1}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 356
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 357
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 359
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->f:Z

    .line 361
    return-void
.end method

.method protected a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V
    .locals 2

    .prologue
    .line 568
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-ne p3, v0, :cond_0

    .line 570
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 571
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 577
    :goto_0
    return-void

    .line 574
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.grubhub.AppBaseLibrary.android.utils.BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 387
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e:I

    .line 388
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(I)V

    .line 466
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 629
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    move-result-object v0

    .line 630
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 631
    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 632
    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0089

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 633
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 634
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 636
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Ljava/lang/Boolean;)V

    .line 482
    :cond_0
    return-void
.end method

.method public g_()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 234
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->f:Z

    .line 237
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 240
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_1

    .line 242
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 245
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    if-eqz v1, :cond_0

    .line 247
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q()V

    .line 256
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->z()V

    .line 257
    return-void

    .line 250
    :cond_1
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_0

    .line 252
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 314
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 315
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b(Z)V

    .line 320
    :cond_0
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 321
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e(Z)V

    .line 326
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 332
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 335
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->l()V

    .line 336
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->finish()V

    .line 377
    return-void
.end method

.method public n()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e:I

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    if-ne p1, v3, :cond_3

    .line 209
    if-ne p2, v1, :cond_1

    .line 210
    const-string v0, "restaurant_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v6

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Ljava/lang/String;ZZLandroid/net/Uri;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->h()V

    goto :goto_0

    .line 217
    :cond_2
    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    .line 218
    invoke-direct {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e(Z)V

    goto :goto_0

    .line 220
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->y()V

    goto :goto_0

    .line 222
    :cond_4
    const/16 v0, 0xbb3

    if-ne p1, v0, :cond_0

    .line 223
    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->u()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v2, :cond_2

    .line 285
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 289
    :goto_1
    if-nez v0, :cond_0

    .line 290
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    .line 291
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->z()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->setContentView(I)V

    .line 159
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->setListener(Lcom/grubhub/AppBaseLibrary/android/views/f;)V

    .line 164
    :cond_0
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->setListener(Lcom/grubhub/AppBaseLibrary/android/views/w;)V

    .line 169
    :cond_1
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->c:Landroid/view/View;

    .line 171
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->B()V

    .line 173
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 174
    const-string v0, "restaurant_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    const-string v0, "search_address"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 176
    const-string v0, "order_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 177
    const-string v0, "search_query"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string v0, "deep_link_uri"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "deep_link_uri"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v6, v0

    .line 179
    :goto_0
    const-string v0, "application_reset"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move-object v0, p0

    .line 181
    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(ZLjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 183
    const/16 v0, -0x64

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e:I

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->h:Landroid/os/Handler;

    .line 188
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->A()V

    .line 189
    return-void

    .line 178
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v1, :cond_0

    .line 497
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->b()V

    .line 500
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 504
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v1, :cond_0

    .line 508
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->c()V

    .line 512
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->APP_NAVIGATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "app navigation menu"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 515
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->setIntent(Landroid/content/Intent;)V

    .line 143
    const-string v0, "restaurant_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string v0, "search_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 145
    const-string v0, "order_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 146
    const-string v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    const-string v0, "deep_link_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "deep_link_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v6, v0

    .line 148
    :goto_0
    const-string v0, "application_reset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 150
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(ZLjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 151
    return-void

    .line 147
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string v0, "current_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onResume()V

    .line 197
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->h:Landroid/os/Handler;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void

    .line 197
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    const-string v0, "current_fragment"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b()V

    .line 489
    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e(Z)V

    .line 538
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v2

    .line 547
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->resetFilterValues()V

    .line 548
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 549
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 552
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->e(Z)V

    .line 553
    return-void
.end method

.method public u()V
    .locals 4

    .prologue
    .line 582
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a()Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 585
    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 588
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 590
    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0089

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 591
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->g:Ljava/lang/String;

    .line 592
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 594
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 603
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 608
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 609
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 613
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xbb3

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 614
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 619
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_0

    .line 623
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->r()V

    .line 625
    :cond_0
    return-void
.end method
