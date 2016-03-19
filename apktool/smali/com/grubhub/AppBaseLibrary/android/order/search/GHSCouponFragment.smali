.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

.field private n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

.field private o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

.field private p:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 435
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v2, "restaurant_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 319
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$6;

    invoke-direct {v3, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$8;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 390
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 232
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->j:Ljava/lang/String;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$1;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$2;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;

    invoke-direct {v1, p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->a()V

    .line 294
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 402
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 403
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$9;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 420
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 423
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    const v1, 0x7f0f015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 424
    if-eqz v0, :cond_0

    .line 425
    if-eqz p1, :cond_2

    const v1, 0x7f080116

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_1
    return-void

    .line 425
    :cond_2
    const v1, 0x7f080117

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->l:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    .line 194
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->l:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 197
    invoke-direct {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->g()V

    .line 211
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->i:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->j:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->setHasOptionsMenu(Z)V

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    const v0, 0x7f03004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 131
    const v0, 0x7f0f015a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->p:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->p:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 134
    const v0, 0x7f0f015b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->n()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->n()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getCoupons()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->k:Ljava/util/ArrayList;

    .line 141
    :cond_0
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/a;

    invoke-direct {v2, p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$1;)V

    .line 142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/a;->a(Ljava/util/ArrayList;)V

    .line 143
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 144
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->o:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->g()V

    .line 155
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->g()V

    .line 160
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_2

    .line 165
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 167
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 173
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 182
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 183
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 185
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 106
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant coupons list"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->i:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 113
    return-void
.end method
