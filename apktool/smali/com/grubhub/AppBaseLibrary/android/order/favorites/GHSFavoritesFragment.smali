.class public Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

.field private k:Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    return-object p1
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Ljava/util/ArrayList;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 314
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    move-object v2, v0

    .line 316
    :goto_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 318
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 322
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 338
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 365
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a()V

    .line 366
    return-void

    .line 315
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Z)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$5;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    .line 255
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 272
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->a()V

    .line 305
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g:Landroid/view/View;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;

    const v3, 0x7f030089

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;

    .line 156
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g:Landroid/view/View;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    .line 78
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a:Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->setHasOptionsMenu(Z)V

    .line 94
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 98
    const v0, 0x7f030053

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 102
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 103
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/at;)V

    .line 111
    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 112
    const v1, 0x7f030041

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {p1, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->g:Landroid/view/View;

    .line 114
    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    .line 115
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    const v4, 0x7f030089

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->f:Landroid/widget/ListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    return-object v0

    .line 102
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
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    .line 84
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 187
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;->h()V

    .line 191
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 173
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 179
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 180
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 182
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 204
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->e:Z

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Z)V

    .line 211
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "my favorite restaurants"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 214
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 220
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->g()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    .line 223
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b()V

    .line 225
    :cond_0
    return-void
.end method
