.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;
.implements Lcom/grubhub/AppBaseLibrary/android/account/b;
.implements Lcom/grubhub/AppBaseLibrary/android/account/i;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/o;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/f;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

.field private D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

.field private E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

.field private F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

.field private G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

.field private H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

.field private I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

.field private J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnTouchListener;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Landroid/view/View$OnClickListener;

.field private a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

.field private f:Landroid/support/v4/app/w;

.field private g:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View$OnClickListener;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 144
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->K:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->L:Landroid/view/View$OnTouchListener;

    .line 307
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$23;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$23;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->M:Landroid/view/View$OnClickListener;

    .line 320
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->N:Landroid/view/View$OnClickListener;

    .line 1949
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1467
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->p:Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->setOrientation(I)V

    .line 1472
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "order tip selection"

    const-string v3, "show tip selection_CTA"

    const-string v4, "hide"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->p:Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;->setOrientation(I)V

    .line 1481
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "order tip selection"

    const-string v3, "show tip selection_CTA"

    const-string v4, "expand"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/util/List;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/util/List;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;"
        }
    .end annotation

    .prologue
    .line 1666
    const/4 v1, 0x0

    .line 1667
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 1668
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1674
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object p1
.end method

.method private a(FZ)V
    .locals 6

    .prologue
    .line 1276
    if-eqz p2, :cond_0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    .line 1277
    :goto_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$30;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$30;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$31;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$31;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;-><init>(Landroid/content/Context;FLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    .line 1295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$32;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$32;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1307
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$33;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$33;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1321
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;->a()V

    .line 1322
    return-void

    .line 1276
    :cond_0
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->INCLUDE_IN_BILL:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
    .locals 4

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    .line 1234
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 1235
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$27;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$27;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 1244
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$29;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$29;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    .line 663
    if-eqz v3, :cond_2

    .line 664
    const v0, 0x7f0f02bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 665
    const v1, 0x7f0f02be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 667
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 669
    :goto_0
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x7f08024f

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 668
    goto :goto_0

    .line 669
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x7f080456

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 673
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Landroid/view/View;FZ)V
    .locals 11

    .prologue
    .line 717
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 718
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 721
    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(FI)F

    move-result v1

    .line 722
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(FI)F

    move-result v2

    .line 723
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(FI)F

    move-result v3

    .line 725
    const v0, 0x7f0f0153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 726
    const v0, 0x7f0f0151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 727
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v7, 0x7f0800e3

    invoke-virtual {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$41;

    invoke-direct {v5, p0, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$41;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;FZ)V

    iput-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w:Landroid/view/View$OnClickListener;

    .line 741
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v7, 0x7f0800e3

    invoke-virtual {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 745
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;

    invoke-direct {v5, p0, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;FZ)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v2, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 755
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    :cond_1
    :goto_1
    return-void

    .line 723
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 759
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY_OR_PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v2, :cond_6

    .line 760
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v0

    if-nez v0, :cond_5

    .line 762
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 763
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800ed

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    :cond_4
    :goto_2
    cmpl-float v0, v3, v1

    if-lez v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 770
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 764
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v0

    if-nez v0, :cond_4

    .line 765
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 773
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v2, :cond_7

    .line 774
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 776
    cmpl-float v0, v3, v1

    if-lez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x7f0800f3

    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 781
    :cond_7
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_1

    .line 782
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    if-eqz p1, :cond_0

    .line 451
    const v0, 0x7f0f0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    const v0, 0x7f0f0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    const v0, 0x7f0f0149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    .line 455
    const v0, 0x7f030081

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t:Landroid/view/View;

    .line 456
    const v0, 0x7f030080

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s:Landroid/view/View;

    .line 457
    const v0, 0x7f0f014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->u:Landroid/view/View;

    .line 458
    const v0, 0x7f0f0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v:Landroid/view/View;

    .line 459
    const v0, 0x7f0f014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n:Landroid/widget/TextView;

    .line 460
    const v0, 0x7f0f014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->o:Landroid/widget/TextView;

    .line 461
    const v0, 0x7f0f014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->p:Lcom/grubhub/AppBaseLibrary/android/views/GHSTriangle;

    .line 463
    const v0, 0x7f0f0152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    .line 464
    const v0, 0x7f0f0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    .line 465
    const v0, 0x7f0f0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->r:Landroid/view/View;

    .line 467
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t:Landroid/view/View;

    const v1, 0x7f0f02bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    .line 468
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t:Landroid/view/View;

    const v1, 0x7f0f02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->q:Landroid/view/View;

    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->r()V

    .line 472
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s()V

    .line 474
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    .line 475
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/util/List;)V

    .line 478
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->hasCoupons()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$39;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$39;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    :goto_0
    const v0, 0x7f0f0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 497
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->r:Landroid/view/View;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->u:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$40;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$40;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->y()V

    .line 511
    :cond_0
    return-void

    .line 493
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 6

    .prologue
    .line 876
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;

    invoke-direct {v3, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 881
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$4;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$5;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 903
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 918
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 942
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a()V

    .line 943
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;FZ)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getOriginalItemId()Ljava/lang/String;

    move-result-object v3

    .line 1006
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$13;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$14;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    .line 1024
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1035
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1049
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a()V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->notifyDataSetChanged()V

    .line 1054
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1055
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 1056
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1163
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$21;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$21;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$22;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$22;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    .line 1177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$24;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$24;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1192
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$25;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$25;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1200
    invoke-direct {p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_QUANTITY_CHANGE_DROPS_BELOW_COUPON_MIN_ORDER:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 1202
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/q;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/q;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1210
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "cart change alert_lose coupon modal"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 1215
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1220
    :goto_1
    return-void

    :cond_0
    move-object v4, v7

    .line 1215
    goto :goto_0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->a()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1068
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$17;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    new-instance v9, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$18;

    invoke-direct {v9, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    move-object v2, p1

    move-object v4, v3

    move-object v6, v3

    move v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 1085
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$19;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$19;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 1101
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1118
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a()V

    .line 1120
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 1415
    if-eqz v0, :cond_0

    .line 1416
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    if-eqz v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->notifyDataSetChanged()V

    .line 1422
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->y:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getMinimumAmount()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1154
    :goto_0
    return v0

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getMinimumAmountInCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotalInCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmountInCents()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v0, v3

    .line 1141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 1145
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotalInCents()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1146
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotalInCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v4, v0

    move v8, v3

    move v3, v0

    move v0, v8

    .line 1154
    :goto_1
    if-ge v3, v5, :cond_3

    if-le v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    move v3, v4

    goto :goto_1

    :cond_5
    move v0, v2

    move v3, v4

    goto :goto_1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/h;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x7f080456

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 683
    const v0, 0x7f0f02c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 684
    const v0, 0x7f0f02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 685
    const v1, 0x7f0f02c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 686
    const v2, 0x7f0f02c3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 688
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v4

    if-nez v4, :cond_1

    .line 689
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    return-void

    .line 691
    :cond_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 692
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1330
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 1331
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->Y()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCartId()Ljava/lang/String;

    move-result-object v0

    .line 1334
    :goto_0
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v4

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$35;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$35;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-direct {v3, v4, p1, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 1345
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$36;

    invoke-direct {v3, p0, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$36;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1360
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$37;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$37;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1375
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a()V

    .line 1376
    return-void

    :cond_0
    move-object v0, v1

    .line 1332
    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1401
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1402
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setEnabled(Z)V

    .line 1403
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->q:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->r:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1405
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->A:Z

    return p1
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 705
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/view/View;FZ)V

    .line 706
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->y:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z:Z

    return p1
.end method

.method public static d()Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;-><init>()V

    .line 364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->setArguments(Landroid/os/Bundle;)V

    .line 367
    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z:Z

    return v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->x:I

    return v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/support/v4/app/w;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->M:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->A()V

    return-void
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v()V

    return-void
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t()V

    return-void
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s()V

    return-void
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/e;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    return-object v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    return-object v0
.end method

.method static synthetic q(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->x()V

    return-void
.end method

.method static synthetic r(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 644
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 646
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/view/View;)V

    .line 647
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 654
    return-void
.end method

.method static synthetic s(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_1

    .line 794
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setFrontVisible(Z)V

    .line 796
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setFrontVisible(Z)V

    .line 812
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFlipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->L:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 837
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 838
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 856
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->u()V

    goto :goto_0

    .line 850
    :cond_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 851
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0
.end method

.method private u()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 862
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCrossStreetRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 863
    :goto_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v3

    .line 864
    :goto_1
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v4}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v6

    const v7, 0x7f0f0159

    move v4, v1

    .line 865
    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;ZZLjava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 866
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 868
    return-void

    :cond_0
    move v2, v5

    .line 862
    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 863
    goto :goto_1
.end method

.method static synthetic u(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->A:Z

    return v0
.end method

.method static synthetic v(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method private v()V
    .locals 6

    .prologue
    .line 949
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;-><init>()V

    .line 950
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$8;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$9;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 971
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$10;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 982
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 993
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a()V

    .line 994
    return-void
.end method

.method private w()V
    .locals 5

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->x()V

    .line 1431
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "cart"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1434
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1440
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 1441
    return-void
.end method

.method private y()V
    .locals 4

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 1448
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f0150

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;-><init>()V

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    .line 1449
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1451
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    .line 1458
    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a()V

    .line 1461
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1382
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1385
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0803e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    .line 1383
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1392
    :cond_0
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1727
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    invoke-static {v0, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    .line 1728
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 1729
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0159

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 1730
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 1731
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1732
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1733
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 1692
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->B:Z

    .line 380
    return-void
.end method

.method public a(ZFLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1646
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->o:Landroid/widget/TextView;

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1652
    if-eqz p1, :cond_5

    .line 1653
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f08051f

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1660
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_3

    .line 1661
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/view/View;FZ)V

    .line 1663
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 1648
    goto :goto_0

    .line 1655
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f0159

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    const/4 v3, 0x0

    .line 1720
    invoke-static {v2, p1, v3, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 1721
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1722
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1723
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1514
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 1519
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 1700
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    .line 1701
    if-eqz v0, :cond_2

    .line 1702
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1703
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1704
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 1715
    :cond_1
    :goto_0
    return-void

    .line 1711
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1712
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 1713
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;I)V

    .line 1683
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 1684
    if-eqz v0, :cond_0

    .line 1685
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;)V

    .line 1687
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 633
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 634
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->k:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 637
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1524
    if-eqz v0, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1526
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1527
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1529
    :cond_0
    return-void
.end method

.method public f_()Z
    .locals 2

    .prologue
    .line 1493
    .line 1495
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const v1, 0x7f0f0159

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1496
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v1, :cond_0

    .line 1497
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 1507
    :goto_0
    return v0

    .line 1498
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    if-eqz v0, :cond_2

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->d()Z

    .line 1503
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s()V

    .line 1505
    const/4 v0, 0x1

    goto :goto_0

    .line 1507
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1534
    if-eqz v0, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1536
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1537
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1539
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w()V

    .line 1541
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z()V

    .line 1542
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 1738
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1547
    if-eqz v0, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1549
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1552
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w()V

    .line 1554
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z()V

    .line 1555
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1560
    if-eqz v0, :cond_0

    .line 1561
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1562
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1563
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1565
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z()V

    .line 1566
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1571
    if-eqz v0, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1573
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1574
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1576
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z()V

    .line 1577
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 1581
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 1582
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1583
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1587
    :cond_1
    const v1, 0x7f0f0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    const v1, 0x7f0f0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1592
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    if-eqz v0, :cond_2

    .line 1593
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->notifyDataSetChanged()V

    .line 1602
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_3

    .line 1603
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z()V

    .line 1605
    :cond_3
    return-void

    .line 1595
    :cond_4
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->j:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    if-eqz v1, :cond_2

    .line 1596
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/util/List;)V

    .line 1597
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c(Landroid/view/View;)V

    .line 1598
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->r()V

    .line 1599
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s()V

    goto :goto_0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l()V

    .line 1610
    return-void
.end method

.method public n()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 1629
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 386
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    if-eqz v0, :cond_0

    .line 387
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    .line 389
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 402
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f:Landroid/support/v4/app/w;

    .line 403
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 404
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->Q()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d:Ljava/util/List;

    .line 406
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->x:I

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->setHasOptionsMenu(Z)V

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b:Ljava/util/List;

    .line 410
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    const v0, 0x7f03004c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 416
    const v0, 0x7f0f0143

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 417
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 419
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 420
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    :cond_1
    const v0, 0x7f0f0144

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    const v0, 0x7f0f0155

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :goto_0
    const v0, 0x7f0f0158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$38;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$38;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    return-object v1

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-nez v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    goto :goto_0

    .line 431
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    .line 396
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 530
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 532
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 533
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 535
    :cond_0
    const/4 v0, 0x1

    .line 537
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 517
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 519
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 521
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 522
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 565
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 567
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->z()V

    .line 570
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 543
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 545
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d:Ljava/util/List;

    .line 548
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;I)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;Z)V

    .line 556
    :cond_1
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->B:Z

    if-nez v0, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->w()V

    .line 559
    :cond_2
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->B:Z

    .line 561
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 574
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 576
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->g()V

    .line 578
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->E:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    .line 579
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->g()V

    .line 584
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->H:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 585
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->g()V

    .line 590
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 591
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->g()V

    .line 596
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 597
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->g()V

    .line 602
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->F:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    .line 603
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    if-eqz v0, :cond_5

    .line 607
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->g()V

    .line 608
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->G:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 609
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    if-eqz v0, :cond_6

    .line 613
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;->g()V

    .line 614
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->I:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/q;

    .line 615
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 618
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    if-eqz v0, :cond_7

    .line 619
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->g()V

    .line 620
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->J:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 621
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Z)V

    .line 624
    :cond_7
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s()V

    .line 626
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 627
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/h;->k()V

    .line 1636
    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f_()Z

    .line 1641
    return-void
.end method
