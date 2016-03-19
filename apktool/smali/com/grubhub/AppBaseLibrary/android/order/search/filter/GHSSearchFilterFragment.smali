.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field private f:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    return-void
.end method

.method private a(ILandroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .prologue
    .line 254
    const v0, 0x7f0300be

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 257
    const v0, 0x7f0f035e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 5

    .prologue
    .line 207
    const v0, 0x7f0f0280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentTabHost;

    .line 210
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v2

    const v3, 0x1020011

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/support/v4/app/w;I)V

    .line 213
    const-string v1, "cuisines"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 214
    const v2, 0x7f0804f6

    invoke-direct {p0, v2, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(ILandroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 216
    const-string v2, "refine"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 217
    const v3, 0x7f0804fd

    invoke-direct {p0, v3, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(ILandroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 219
    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->e()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 220
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 223
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->b:I

    if-nez v1, :cond_0

    .line 224
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTab(I)V

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->g()V

    return-void
.end method

.method private e()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 234
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private f()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 243
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->i()Landroid/graphics/Point;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v0, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 272
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 273
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->i()Landroid/graphics/Point;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 286
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 287
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    return-void
.end method

.method private i()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 315
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 316
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 317
    return-object v1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->b:I

    .line 191
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 187
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f_()Z

    .line 198
    return-void
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a:Z

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->h()V

    .line 176
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->c:Landroid/app/Activity;

    .line 68
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    .line 72
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 83
    const v0, 0x7f030076

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    const v1, 0x7f0f0282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->setFilterFragment(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 165
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f_()Z

    move-result v0

    .line 168
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
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 139
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    :cond_1
    instance-of v0, v1, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 152
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v2, 0x7f08007e

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 156
    :cond_2
    instance-of v0, v1, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v0, :cond_3

    .line 157
    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/e;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/e;->d(I)V

    .line 159
    :cond_3
    return-void
.end method
