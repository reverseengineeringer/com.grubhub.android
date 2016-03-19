.class public Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroid/support/v4/widget/DrawerLayout;

.field private d:Landroid/support/v7/app/n;

.field private e:Z

.field private f:Landroid/support/v4/widget/p;

.field private g:Lcom/grubhub/AppBaseLibrary/android/e;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    const v1, 0x7f08006d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-static {p1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 583
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 594
    invoke-static {p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 595
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    .line 599
    const v0, 0x7f0803ca

    if-ne v0, p2, :cond_1

    .line 600
    const-string v0, "contact us"

    .line 606
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->HELP:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-direct {v2, v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 609
    :cond_0
    return-void

    .line 601
    :cond_1
    const v0, 0x7f0803c7

    if-ne v0, p2, :cond_0

    .line 602
    const-string v0, "about us"

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/b/d;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a()[Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    move-result-object v1

    .line 272
    const v0, 0x7f0f01c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 273
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/a/b;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lcom/grubhub/AppBaseLibrary/android/a/b;-><init>(Landroid/content/Context;[Lcom/grubhub/AppBaseLibrary/android/c/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/f;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    const v0, 0x7f0f01b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const v0, 0x7f0f01b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    return-void
.end method

.method private a(Landroid/view/View;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 7

    .prologue
    const v6, 0x7f0f01bb

    const/4 v5, 0x0

    .line 289
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/b/d;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->b()[Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    move-result-object v1

    .line 292
    const v0, 0x7f0f01c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 293
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/a/b;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lcom/grubhub/AppBaseLibrary/android/a/b;-><init>(Landroid/content/Context;[Lcom/grubhub/AppBaseLibrary/android/c/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/f;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :goto_0
    const v0, 0x7f0f01bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const v0, 0x7f0f01b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    const v0, 0x7f0f01b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 311
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 301
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    :cond_0
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Landroid/view/View;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Landroid/view/View;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v4/widget/p;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->f:Landroid/support/v4/widget/p;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->e()Landroid/app/ActionBar;

    move-result-object v0

    .line 422
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 423
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 424
    return-void
.end method

.method private e()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v7/app/n;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d:Landroid/support/v7/app/n;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 523
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->f()V

    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g:Lcom/grubhub/AppBaseLibrary/android/e;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b()V

    .line 530
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    .line 531
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_0

    .line 542
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$9;

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    .line 557
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 563
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a()V

    .line 566
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 567
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Landroid/view/View;)V

    .line 570
    const-string v0, "UserLoggedOut"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d:Landroid/support/v7/app/n;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/n;->a(Z)V

    .line 405
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/support/v4/widget/DrawerLayout;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b:Landroid/view/View;

    .line 330
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0200e5

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 336
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->e()Landroid/app/ActionBar;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 338
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 342
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0803dd

    const v5, 0x7f0803dc

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d:Landroid/support/v7/app/n;

    .line 384
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d:Landroid/support/v7/app/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/p;)V

    .line 392
    return-void
.end method

.method public a(Landroid/support/v4/widget/p;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->f:Landroid/support/v4/widget/p;

    .line 401
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 437
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->setHasOptionsMenu(Z)V

    .line 197
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 131
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    .line 133
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/e;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g:Lcom/grubhub/AppBaseLibrary/android/e;

    .line 136
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d:Landroid/support/v7/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/n;->a(Landroid/content/res/Configuration;)V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->e:Z

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d()V

    .line 234
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 235
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0f01bd

    .line 150
    const v0, 0x7f03005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    const v1, 0x7f0f01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :goto_0
    const v1, 0x7f0f01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v0

    .line 178
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d:Landroid/support/v7/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/n;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c()V

    .line 203
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->g()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 217
    :cond_1
    return-void
.end method
