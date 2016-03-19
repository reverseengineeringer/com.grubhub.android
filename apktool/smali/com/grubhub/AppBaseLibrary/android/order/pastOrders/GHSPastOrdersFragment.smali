.class public Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

.field private m:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    return-object p1
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;-><init>()V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;)",
            "Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 213
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f030096

    invoke-direct {v0, v1, v2, p2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 214
    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a(Ljava/util/List;)V

    .line 215
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;->ORDER_HISTORY:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;)V

    .line 216
    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->b(Z)V

    .line 217
    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a(Z)V

    .line 218
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;)V

    .line 233
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;ZZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_1

    .line 330
    invoke-static {p1, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$8;

    invoke-direct {v5, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 348
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 356
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$10;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 363
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a()V

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b()V

    .line 367
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->f:Z

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 7

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$5;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 263
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 264
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 276
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;Z)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 316
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a()V

    .line 318
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->h:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 388
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 400
    :cond_0
    :goto_1
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    .line 384
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->b(Ljava/util/List;)V

    .line 385
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 390
    :cond_2
    const v1, 0x7f080371

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->h:Landroid/view/View;

    const v2, 0x7f0f031a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->h:Landroid/view/View;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b()V

    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->e:Z

    return v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 79
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    .line 82
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->setHasOptionsMenu(Z)V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    const v0, 0x7f030064

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 106
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 107
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/at;)V

    .line 115
    const v1, 0x7f0f01dc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 116
    const v1, 0x7f0300ad

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->h:Landroid/view/View;

    .line 118
    const v1, 0x7f0f01e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    .line 119
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-object v0

    .line 106
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
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    .line 88
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 143
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;->j()V

    .line 146
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 129
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 135
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 136
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 138
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 181
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->M()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c:Ljava/util/ArrayList;

    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;

    .line 184
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a(Ljava/util/List;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 162
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->e:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(ZZ)V

    .line 171
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "order history"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 174
    return-void

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->f:Z

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 192
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->g()V

    .line 194
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 195
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->b()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->g()V

    .line 200
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 202
    :cond_1
    return-void
.end method
