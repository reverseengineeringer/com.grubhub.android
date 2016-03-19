.class public Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/views/aa;
.implements Lcom/grubhub/AppBaseLibrary/android/views/b;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 445
    .line 447
    invoke-virtual {p2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {p2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0803e5

    .line 451
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v4, v3

    move-object v6, v3

    .line 445
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 454
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->d:Z

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 436
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->q()V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->e:Z

    return p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 462
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->HELP:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 467
    return-void
.end method

.method private d(Z)V
    .locals 0

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->d:Z

    .line 477
    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->p()V

    .line 154
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->k()V

    .line 157
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->l()V

    .line 160
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->m()V

    .line 163
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->n()V

    .line 166
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->o()V

    .line 167
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    .line 173
    const v0, 0x7f0f0098

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 174
    const v1, 0x7f0f009a

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 175
    const v2, 0x7f0f009b

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 176
    const v3, 0x7f0f009c

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 179
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const v4, 0x7f040019

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 185
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 201
    const v5, 0x7f040018

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 202
    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;

    invoke-direct {v6, p0, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 244
    const v0, 0x7f0f009e

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 308
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 375
    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 389
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$12;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 399
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 401
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 408
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 414
    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 415
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->setAddressDropdownContainer(Landroid/view/ViewGroup;)V

    .line 416
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->setAddressBarListener(Lcom/grubhub/AppBaseLibrary/android/views/b;)V

    .line 417
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->c()V

    .line 426
    :cond_0
    return-void
.end method


# virtual methods
.method public a(DDLcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 9

    .prologue
    .line 514
    .line 515
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$14;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$15;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;-><init>(Landroid/content/Context;DDLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    .line 529
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;

    invoke-direct {v1, p0, p5, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 540
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 546
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a()V

    .line 547
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 483
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 484
    const/4 v0, 0x0

    .line 486
    :try_start_0
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 491
    :goto_0
    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 496
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 498
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 501
    invoke-interface {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(I)V

    .line 504
    invoke-interface {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->i(Z)V

    .line 507
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 508
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->finish()V

    .line 509
    return-void

    .line 487
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 552
    .line 553
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 567
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$6;

    invoke-direct {v1, p0, p2, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 578
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$7;

    invoke-direct {v1, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 584
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a()V

    .line 585
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->e:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 611
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 612
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public i_()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public j_()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    if-nez p1, :cond_0

    .line 103
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->i(Z)V

    .line 110
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->finish()V

    .line 114
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->c()V

    .line 86
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->c:Landroid/view/View;

    .line 87
    const v0, 0x7f0f00a3

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->setListener(Lcom/grubhub/AppBaseLibrary/android/views/aa;)V

    .line 91
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->i()V

    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->j()V

    .line 95
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStart()V

    .line 122
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->finish()V

    .line 127
    :cond_0
    const-string v0, "onboarding 1 start"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->c(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->g()V

    .line 137
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->g()V

    .line 142
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 144
    :cond_1
    return-void
.end method
