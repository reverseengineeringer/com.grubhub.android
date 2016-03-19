.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

.field private d:Landroid/view/View;

.field private e:Lcom/grubhub/AppBaseLibrary/android/order/search/c;

.field private f:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 241
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "restaurant_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "category_list"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    const v1, 0x7f0f019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 156
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 157
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 159
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->f:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    const v1, 0x7f0f019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 184
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 185
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(I)V

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 78
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    .line 83
    :cond_1
    :goto_1
    return-void

    .line 74
    :cond_2
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    goto :goto_0

    .line 80
    :cond_3
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->b:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->f:Landroid/view/GestureDetector;

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 87
    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    const v1, 0x7f0f019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    const v2, 0x7f0f019f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 99
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    const v4, 0x7f03008e

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->b:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    const v3, 0x7f0f019e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 111
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$3;

    invoke-direct {v4, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 121
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->setHasOptionsMenu(Z)V

    .line 123
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 210
    const v1, 0x7f0f0004

    if-ne v0, v1, :cond_0

    .line 211
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(I)V

    .line 212
    const/4 v0, 0x1

    .line 214
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
    .line 191
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 193
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 200
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 202
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 203
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 205
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 145
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu categories"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 151
    return-void
.end method
