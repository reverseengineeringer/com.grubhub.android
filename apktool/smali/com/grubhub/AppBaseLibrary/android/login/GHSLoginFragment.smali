.class public Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/login/b;

.field private c:Z

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ToggleButton;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:[Z

.field private n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

.field private o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

.field private p:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

.field private q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

.field private r:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

.field private s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

.field private t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    return-object p1
.end method

.method public static a(Z)Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "prefill_email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;-><init>()V

    .line 98
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Z)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;[Z)[Z
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->m:[Z

    return-object p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 307
    :goto_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$13;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$2;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    .line 323
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    invoke-direct {v2, p0, v4, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 417
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 436
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->a()V

    .line 437
    return-void

    .line 305
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 471
    :goto_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->j:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 475
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 470
    goto :goto_0

    :cond_2
    move v1, v2

    .line 473
    goto :goto_1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->m:[Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->m:[Z

    array-length v0, v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 447
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->m:[Z

    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-boolean v6, v4, v3

    .line 448
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    move v0, v1

    .line 447
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 448
    goto :goto_1

    .line 451
    :cond_1
    if-eqz v0, :cond_2

    .line 452
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Z)V

    .line 453
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b:Lcom/grubhub/AppBaseLibrary/android/login/b;

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b:Lcom/grubhub/AppBaseLibrary/android/login/b;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->c:Z

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/b;->d(Z)V

    .line 458
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 482
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 483
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->f()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 484
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    .line 485
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 553
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;->a()V

    .line 555
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 563
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->p()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 564
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 565
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 567
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 568
    if-lez v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 572
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b()V

    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->i:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)[Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->m:[Z

    return-object v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->c()V

    return-void
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    return-object v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    return-object v0
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    return-object v0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    return-object v0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    return-object v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->e()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/login/b;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/login/b;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b:Lcom/grubhub/AppBaseLibrary/android/login/b;

    .line 109
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->setHasOptionsMenu(Z)V

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 127
    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    const v0, 0x7f0f0193

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d:Landroid/view/ViewGroup;

    .line 130
    const v0, 0x7f0f0194

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->e:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0f0195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    .line 132
    const v0, 0x7f0f0196

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->g:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0f0197

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    .line 134
    const v0, 0x7f0f0198

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->i:Landroid/widget/ToggleButton;

    .line 135
    const v0, 0x7f0f0199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->j:Landroid/widget/Button;

    .line 136
    const v0, 0x7f0f019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->k:Landroid/widget/Button;

    .line 137
    const v0, 0x7f0f019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->l:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$6;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "prefill_email"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->f:Landroid/widget/EditText;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$8;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$9;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->i:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->j:Landroid/widget/Button;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$11;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->k:Landroid/widget/Button;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$12;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b:Lcom/grubhub/AppBaseLibrary/android/login/b;

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 258
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d()V

    .line 259
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;->g()V

    .line 267
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/a;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;->g()V

    .line 271
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->g()V

    .line 275
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->g()V

    .line 279
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->g()V

    .line 283
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;->g()V

    .line 287
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->g()V

    .line 291
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 294
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Z)V

    .line 295
    return-void
.end method
