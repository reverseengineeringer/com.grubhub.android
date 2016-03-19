.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;
.implements Lcom/grubhub/AppBaseLibrary/android/views/i;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

.field private j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private k:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

.field private m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

.field private n:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->c:I

    .line 74
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 400
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->c:I

    return p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v1, "RESTAURANT_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;-><init>()V

    .line 101
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f()V

    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->c:I

    return v0
.end method

.method private f()V
    .locals 8

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d:Z

    .line 287
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_1

    .line 290
    const/4 v5, 0x0

    .line 291
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;->getId()Ljava/lang/String;

    move-result-object v5

    .line 295
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g:Ljava/lang/String;

    const/16 v3, 0x1e

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->c:I

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$4;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    .line 343
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a()V

    .line 391
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->k:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f()V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/j;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->a(Ljava/util/List;)V

    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->k:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f()V

    .line 398
    :cond_0
    return-void
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->k()V

    .line 255
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->setHasOptionsMenu(Z)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->e:Z

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESTAURANT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->T()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 141
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    const v0, 0x7f030072

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->k:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 150
    const v1, 0x7f0f026f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    .line 151
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setOverScrollListener(Lcom/grubhub/AppBaseLibrary/android/views/i;)V

    .line 152
    const v1, 0x7f03008c

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {p1, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 153
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    const v2, 0x7f0804e9

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setLoadingText(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v1, v2, v7, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 155
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/j;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    const v4, 0x7f0300b9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->removeFooterView(Landroid/view/View;)Z

    .line 158
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    new-instance v1, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const v2, 0x7f080238

    .line 176
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v2, v1, v7, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 181
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->n:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 184
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->e:Z

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d()V

    .line 188
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 122
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 195
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 202
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 204
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 205
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 207
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 214
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->e:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->e:Z

    .line 218
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 224
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a()V

    .line 229
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "read ratings and reviews"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 235
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->g()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->d:Z

    .line 245
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->k:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 247
    :cond_0
    return-void
.end method
