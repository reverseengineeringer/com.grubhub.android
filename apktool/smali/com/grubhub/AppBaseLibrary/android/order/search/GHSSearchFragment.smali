.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;
.implements Lcom/grubhub/AppBaseLibrary/android/views/b;
.implements Lcom/grubhub/AppBaseLibrary/android/views/i;
.implements Lcom/grubhub/AppBaseLibrary/android/views/y;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

.field private L:Lcom/grubhub/AppBaseLibrary/android/review/a;

.field private M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

.field private N:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

.field private O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

.field private P:Landroid/view/MenuItem;

.field private Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

.field private R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

.field private S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

.field private T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

.field private U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

.field private V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

.field private W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

.field private X:Landroid/support/v4/app/w;

.field private Y:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

.field private Z:Landroid/content/BroadcastReceiver;

.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Landroid/content/BroadcastReceiver;

.field private ab:Landroid/widget/AbsListView$OnScrollListener;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Landroid/net/Uri;

.field private r:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field private t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private u:Landroid/os/Handler;

.field private v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

.field private w:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

.field private z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c:I

    .line 201
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Z:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->aa:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$23;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$23;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->ab:Landroid/widget/AbsListView$OnScrollListener;

    .line 2116
    return-void
.end method

.method static synthetic A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->r:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    return-object p1
.end method

.method public static a(Z)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    const-string v1, "application_reset"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;-><init>()V

    .line 283
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    return-object v1
.end method

.method public static a(ZLjava/lang/String;Landroid/net/Uri;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    const-string v1, "force_populate"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const-string v1, "search_query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    if-eqz p2, :cond_1

    .line 331
    const-string v1, "deep_link_uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    :cond_1
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;-><init>()V

    .line 335
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 337
    return-object v1
.end method

.method public static a(ZLjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    const-string v1, "force_populate"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    if-eqz p2, :cond_1

    .line 304
    const-string v1, "search_address"

    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    :cond_1
    if-eqz p3, :cond_2

    .line 307
    const-string v1, "order_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 310
    :cond_2
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;-><init>()V

    .line 311
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 313
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1618
    if-eqz p2, :cond_1

    .line 1619
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1621
    if-eqz p3, :cond_0

    .line 1622
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 1625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1627
    :cond_1
    return-object p1
.end method

.method private a(Landroid/view/View;FI)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1420
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 1421
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1422
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1423
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1424
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    neg-float v1, p2

    .line 1425
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1426
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$13;

    invoke-direct {v1, p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;I)V

    .line 1427
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1448
    return-void
.end method

.method private a(Landroid/view/View;FZ)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1458
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1459
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1460
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1461
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1463
    if-eqz p3, :cond_0

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$14;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1469
    return-void

    .line 1463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1384
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->i:Z

    if-nez v0, :cond_3

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->i:Z

    .line 1387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1388
    sub-int v2, p2, v0

    .line 1389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildCount()I

    move-result v3

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    .line 1391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v0, v4

    .line 1393
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getDividerHeight()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d:I

    .line 1394
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setDividerHeight(I)V

    move v0, v1

    .line 1396
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1397
    if-ge v0, v2, :cond_0

    .line 1398
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    neg-float v7, v4

    invoke-direct {p0, v6, v7, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;FZ)V

    .line 1396
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1399
    :cond_0
    if-le v0, v2, :cond_1

    .line 1400
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v5, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;FZ)V

    goto :goto_1

    .line 1402
    :cond_1
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v4, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;FI)V

    goto :goto_1

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v0, :cond_3

    .line 1407
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    invoke-interface {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->c(I)V

    .line 1410
    :cond_3
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V
    .locals 6

    .prologue
    .line 1006
    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V

    .line 1007
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    .line 1018
    iput p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c:I

    .line 1020
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 1021
    if-eqz v1, :cond_1

    .line 1024
    const/4 v7, 0x0

    .line 1025
    if-le p4, v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getSearchId()Ljava/lang/String;

    move-result-object v7

    .line 1029
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    const/16 v5, 0x1e

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$5;

    invoke-direct {v8, p0, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;IZ)V

    new-instance v9, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$6;

    invoke-direct {v9, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    move-object v2, p1

    move v3, p2

    move v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    .line 1054
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$7;

    invoke-direct {v1, p0, p4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;I)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    .line 1123
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;

    invoke-direct {v2, p0, p4, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;ILcom/grubhub/AppBaseLibrary/android/dataServices/a/f;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a()V

    .line 1179
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/review/a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    return-object v0
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 952
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 954
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 957
    iput-boolean v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->j:Z

    .line 960
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSearchTerm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSearchText(Ljava/lang/String;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->J:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 966
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e()V

    .line 980
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_5

    .line 968
    :cond_2
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->l:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    .line 969
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V

    goto :goto_0

    .line 971
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    goto :goto_0

    .line 973
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 974
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/k;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->a(Ljava/util/List;)V

    .line 975
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 976
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    goto :goto_0

    .line 978
    :cond_6
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->l:Z

    return p1
.end method

.method private d(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1478
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    if-eqz v1, :cond_1

    .line 1480
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    .line 1482
    if-eqz p1, :cond_3

    .line 1483
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/d;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/feedback/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->n:Z

    if-eqz v0, :cond_2

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    .line 1492
    :cond_1
    :goto_0
    return-void

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    invoke-interface {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    goto :goto_0

    .line 1489
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    invoke-interface {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->h:Z

    return p1
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->k:Z

    return p1
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    return p1
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->i:Z

    return p1
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    return v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c:I

    return v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->E:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z()V

    return-void
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->h:Z

    return v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t()V

    return-void
.end method

.method static synthetic q(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/c;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->N:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    return-object v0
.end method

.method static synthetic r(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method private t()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v2, -0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 899
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->n()I

    move-result v1

    .line 900
    :goto_0
    if-ne v1, v2, :cond_2

    .line 928
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 899
    goto :goto_0

    .line 904
    :cond_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getFirstVisiblePosition()I

    move-result v2

    .line 905
    sub-int/2addr v1, v2

    .line 906
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildCount()I

    move-result v2

    .line 907
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 908
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    .line 909
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 912
    if-lez v2, :cond_3

    .line 913
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setDividerHeight(I)V

    .line 916
    :cond_3
    :goto_1
    if-ge v0, v2, :cond_0

    .line 917
    if-ge v0, v1, :cond_4

    .line 918
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 919
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v7, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;FZ)V

    .line 916
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 920
    :cond_4
    if-le v0, v1, :cond_5

    .line 921
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 922
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v7, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;FZ)V

    goto :goto_2

    .line 924
    :cond_5
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 925
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v7, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Landroid/view/View;FZ)V

    goto :goto_2
.end method

.method static synthetic u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v()V

    return-void
.end method

.method private u()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 989
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v3

    .line 990
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    move v0, v1

    .line 991
    :goto_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 992
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 993
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v4

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 994
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    move v3, v1

    .line 996
    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    :cond_4
    move v0, v2

    .line 990
    goto :goto_0

    :cond_5
    move v3, v2

    .line 994
    goto :goto_1
.end method

.method static synthetic v(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)I
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c:I

    return v0
.end method

.method private v()V
    .locals 6

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-nez v0, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1196
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1197
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedCuisines()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1198
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSearchTerm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1200
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResultsOmittingOpenTimes()I

    move-result v1

    if-lez v1, :cond_3

    .line 1201
    const v1, 0x7f080377

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1207
    :goto_1
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;-><init>()V

    .line 1208
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V

    .line 1209
    const-string v2, "NO_SEARCH_RESULTS"

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1212
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    move-object v1, v0

    .line 1235
    :goto_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->I:Landroid/view/View;

    const v2, 0x7f0f035d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->I:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1203
    :cond_3
    const v1, 0x7f080376

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1214
    :cond_4
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResultsOmittingOpenTimes()I

    move-result v1

    if-lez v1, :cond_6

    .line 1215
    const v1, 0x7f080375

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1223
    :goto_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    .line 1224
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResults()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    .line 1225
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResults()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1226
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1227
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1228
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedCuisines()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1229
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    move-object v1, v0

    goto :goto_2

    .line 1217
    :cond_6
    const v1, 0x7f080374

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1231
    :cond_7
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e()V

    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method private w()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v6

    .line 1247
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    move-result-object v0

    .line 1250
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1251
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1253
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v3, 0x1

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$9;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 1264
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$10;

    invoke-direct {v1, p0, v7, v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Ljava/util/HashMap;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1289
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a()V

    .line 1299
    :cond_1
    return-void

    :cond_2
    move-object v2, v4

    .line 1251
    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/d;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/feedback/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    .line 1307
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    .line 1309
    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x()V

    return-void
.end method

.method static synthetic y(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/l;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    return-object v0
.end method

.method private y()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1316
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 1318
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1319
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->f()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1320
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-direct {v1, v2, v8, v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    .line 1321
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;->a()V

    .line 1375
    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d:I

    return v0
.end method

.method private z()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1498
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1499
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v0, :cond_9

    .line 1500
    const-string v2, ""

    .line 1504
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    .line 1506
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1507
    add-int/lit8 v1, v1, 0x1

    .line 1508
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 1510
    goto :goto_0

    .line 1513
    :cond_0
    const/4 v0, 0x3

    if-le v1, v0, :cond_1

    .line 1514
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080505

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getRatingsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    move-result-object v0

    .line 1520
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->getHasUserSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1522
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$29;->a:[I

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->getMaxSelectedFilter()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v4

    .line 1540
    :goto_2
    invoke-direct {p0, v2, v0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1544
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getPriceModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v0

    .line 1545
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->getHasUserSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1547
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$29;->b:[I

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->getMaxSelectedFilter()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1565
    :goto_3
    invoke-direct {p0, v2, v4, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1569
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getDistanceRadius()F

    move-result v0

    .line 1570
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getDefaultRadius()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080506

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1575
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->getSingleValueRefinements()Ljava/util/Map;

    move-result-object v1

    .line 1576
    if-eqz v1, :cond_6

    .line 1577
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1578
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    .line 1579
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1580
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1524
    :pswitch_0
    const v0, 0x7f08050c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1527
    :pswitch_1
    const v0, 0x7f080510

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1530
    :pswitch_2
    const v0, 0x7f08050e

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1533
    :pswitch_3
    const v0, 0x7f08050a

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1536
    :pswitch_4
    const v0, 0x7f080508

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1549
    :pswitch_5
    const v0, 0x7f08050b

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1552
    :pswitch_6
    const v0, 0x7f08050f

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1555
    :pswitch_7
    const v0, 0x7f08050d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1558
    :pswitch_8
    const v0, 0x7f080509

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1561
    :pswitch_9
    const v0, 0x7f080507

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1586
    :cond_6
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1587
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1588
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 1589
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f0804a6

    .line 1590
    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1591
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v4

    const-string v6, "MMM d, h:mm a"

    invoke-static {v4, v5, v6, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 1589
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1592
    invoke-direct {p0, v2, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1595
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 1596
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->C:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    :goto_5
    return-void

    .line 1601
    :cond_8
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1605
    :cond_9
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    move v0, v1

    move-object v1, v2

    goto/16 :goto_1

    .line 1522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1547
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public a(DDLcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 9

    .prologue
    .line 1674
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$15;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$16;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;-><init>(Landroid/content/Context;DDLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    .line 1688
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$17;

    invoke-direct {v1, p0, p5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1704
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1716
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->a()V

    .line 1717
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1818
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1819
    invoke-direct {p0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V

    .line 1820
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z()V

    .line 1823
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d(Z)V

    .line 1824
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1632
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v6

    .line 1635
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSearchText(Ljava/lang/String;)V

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v0, :cond_1

    .line 1640
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->resetFilterValues()V

    .line 1647
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1650
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-interface {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1653
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressLabel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1655
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {p0, v0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V

    .line 1656
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z()V

    .line 1660
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e:Z

    if-nez v0, :cond_2

    .line 1661
    invoke-interface {v6, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->f(Z)V

    .line 1662
    iput-boolean v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e:Z

    .line 1666
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e()V

    .line 1669
    invoke-direct {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d(Z)V

    .line 1670
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1860
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v0, :cond_1

    .line 1861
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSearchTerm(Ljava/lang/String;)V

    .line 1865
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedSort()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->RELEVANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setCurrentSortOption(Ljava/lang/String;)V

    .line 1870
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1872
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;Z)V

    .line 1875
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d(Z)V

    .line 1877
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1721
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$19;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$19;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$20;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$20;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 1735
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$21;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1741
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$22;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$22;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1753
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a()V

    .line 1754
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2005
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2006
    :cond_0
    const-string p2, "no search term used"

    .line 2010
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "search"

    .line 2012
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 2013
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Z)V
    .locals 13

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    .line 1889
    if-eqz v3, :cond_2

    .line 1890
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    if-eqz v2, :cond_0

    .line 1891
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->g()V

    .line 1892
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    .line 1895
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v8

    .line 1896
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v9

    .line 1897
    :goto_1
    const/4 v10, 0x0

    .line 1898
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-ne v9, v2, :cond_1

    .line 1899
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1902
    :cond_1
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v12}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    .line 1912
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$24;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$24;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1921
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;

    move/from16 v0, p5

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$25;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)V

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1930
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->a()V

    .line 1932
    :cond_2
    return-void

    .line 1895
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1896
    :cond_4
    sget-object v9, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 1937
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    if-nez v0, :cond_0

    .line 1938
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$26;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$26;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 1947
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$27;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$27;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1955
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$28;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$28;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1961
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a()V

    .line 1963
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 2083
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurants search results"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 2086
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v5

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v6

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->a(Ljava/lang/String;ZZLandroid/net/Uri;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1884
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->m:Z

    .line 944
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 2093
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->clearFocus()V

    .line 2094
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->clearFocus()V

    .line 2095
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1758
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1760
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1762
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v1, :cond_1

    .line 1764
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/e;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/e;->p()V

    .line 1766
    :cond_1
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    .line 2111
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    const/4 v2, 0x1

    const/16 v3, 0x1e

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V

    .line 2114
    :cond_0
    return-void
.end method

.method public f_()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2053
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2054
    if-eqz v0, :cond_0

    .line 2055
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f_()Z

    move v0, v1

    .line 2077
    :goto_0
    return v0

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    move v0, v1

    .line 2062
    goto :goto_0

    .line 2066
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2067
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b()V

    move v0, v1

    .line 2068
    goto :goto_0

    .line 2072
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    const v1, 0x7f0f027e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2073
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v1, :cond_3

    .line 2074
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    goto :goto_0

    .line 2077
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 1787
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurants search results"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1790
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1795
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Y:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1796
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Y:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResults()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(I)V

    .line 1799
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1800
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->n:Z

    .line 1801
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    .line 1805
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/review/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1806
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->o:Z

    .line 1807
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/a;->c(Z)V

    .line 1811
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f027f

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Y:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    .line 1812
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1813
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 1814
    return-void

    .line 1796
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResults()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public i_()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1770
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1772
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1774
    :cond_0
    return-void
.end method

.method public j()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1828
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1829
    if-eqz v0, :cond_3

    .line 1832
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1833
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1834
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 1837
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->n:Z

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    invoke-interface {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    .line 1839
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->n:Z

    .line 1843
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->o:Z

    if-eqz v0, :cond_1

    .line 1844
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    invoke-interface {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/review/a;->c(Z)V

    .line 1845
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->o:Z

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v0, :cond_2

    .line 1850
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    .line 1852
    :cond_2
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurants search results"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1856
    :cond_3
    return-void
.end method

.method public j_()V
    .locals 5

    .prologue
    .line 1779
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "enter location"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1782
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1967
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1968
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 1969
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1972
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1973
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1976
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->c()V

    .line 1977
    return-void
.end method

.method public l()V
    .locals 5

    .prologue
    .line 1982
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "autocomplete screen_default"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1985
    return-void
.end method

.method public m()V
    .locals 5

    .prologue
    .line 1990
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "autocomplete screen_food"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1993
    return-void
.end method

.method public n()V
    .locals 5

    .prologue
    .line 1998
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "autocomplete screen_restaurant"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 2001
    return-void
.end method

.method public o()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2017
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 2018
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/q;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 2020
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2021
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2022
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2023
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->supportInvalidateOptionsMenu()V

    .line 2026
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurants search results"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 2029
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 344
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 345
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    .line 348
    :cond_0
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/review/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 349
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/a;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    .line 352
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 353
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    .line 356
    :cond_2
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    if-eqz v0, :cond_3

    .line 357
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->N:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    .line 359
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->setHasOptionsMenu(Z)V

    .line 376
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->setRetainInstance(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    .line 379
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Y:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    .line 381
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 382
    const-string v0, "force_populate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->j:Z

    .line 384
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->o()Z

    move-result v2

    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e:Z

    .line 386
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->A()Z

    move-result v2

    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->f:Z

    .line 388
    const-string v2, "search_query"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v3

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 391
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v3, :cond_0

    .line 392
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSearchTerm(Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-interface {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 398
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v4, "search"

    const-string v5, "restaurant search_google now"

    invoke-direct {v3, v4, v5, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 404
    :cond_1
    const-string v0, "restaurant_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->p:Ljava/lang/String;

    .line 405
    const-string v0, "deep_link_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q:Landroid/net/Uri;

    .line 406
    const-string v0, "application_reset"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->l:Z

    .line 407
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 735
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 736
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    .line 737
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    const v1, 0x7f030017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 738
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->P:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 745
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 754
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    .line 755
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 756
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x7f080456

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 764
    :cond_3
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v5, v5}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(ZZ)V

    .line 766
    :cond_4
    return-void

    .line 758
    :cond_5
    const-string v1, "$0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 411
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v4

    .line 413
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 414
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 415
    const v0, 0x106000d

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 416
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 417
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    const v0, 0x7f030016

    invoke-virtual {p1, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 420
    const v0, 0x7f0f0070

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    .line 421
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 423
    const v0, 0x7f030075

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 424
    const v1, 0x7f0300bd

    invoke-virtual {p1, v1, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->I:Landroid/view/View;

    .line 425
    const v1, 0x7f0300bf

    invoke-virtual {p1, v1, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->J:Landroid/view/View;

    .line 427
    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 428
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$30;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/at;)V

    .line 436
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 437
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b00e2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 438
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v5, v2, v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZII)V

    .line 440
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->u:Landroid/os/Handler;

    .line 442
    const v1, 0x7f0f0065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    .line 443
    const v1, 0x7f0f0275

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 444
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v5, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSearchResultsContainer(Landroid/view/ViewGroup;)V

    .line 445
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSearchBarListener(Lcom/grubhub/AppBaseLibrary/android/views/y;)V

    .line 446
    const v1, 0x7f0f027d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 448
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v5, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setAddressDropdownContainer(Landroid/view/ViewGroup;)V

    .line 449
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setAddressBarListener(Lcom/grubhub/AppBaseLibrary/android/views/b;)V

    .line 450
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setHideView(Landroid/view/View;)V

    .line 452
    const v1, 0x7f0f0273

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->B:Landroid/view/View;

    .line 453
    const v1, 0x7f0f0277

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->C:Landroid/view/View;

    .line 454
    const v1, 0x7f0f0279

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->A:Landroid/widget/TextView;

    .line 455
    const v1, 0x7f0f0278

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->D:Landroid/view/View;

    .line 456
    const v1, 0x7f0f027a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->E:Landroid/view/View;

    .line 457
    const v1, 0x7f0f027b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->F:Landroid/view/View;

    .line 458
    const v1, 0x7f0f027c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->G:Landroid/view/View;

    .line 460
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->D:Landroid/view/View;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$31;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$31;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->F:Landroid/view/View;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$32;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$32;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->G:Landroid/view/View;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$33;

    invoke-direct {v5, p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$33;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 503
    const v1, 0x7f0f0274

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    .line 504
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setOverScrollListener(Lcom/grubhub/AppBaseLibrary/android/views/i;)V

    .line 505
    const v1, 0x7f03008c

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {p1, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 506
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    const v5, 0x7f080512

    invoke-virtual {p0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setLoadingText(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v1, v5, v9, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 508
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/k;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v6

    const v7, 0x7f0300b5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/k;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->removeFooterView(Landroid/view/View;)Z

    .line 511
    new-instance v1, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 512
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v5, v1, v9, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 514
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 539
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$35;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$35;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 549
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 550
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 552
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->ab:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 554
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->n()I

    move-result v1

    const/16 v5, -0x64

    if-eq v1, v5, :cond_0

    .line 555
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_0

    .line 557
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$3;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 576
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v4

    .line 577
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/util/ArrayList;Z)V

    .line 582
    :cond_1
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->j:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c(Z)V

    .line 584
    return-object v0

    :cond_3
    move v1, v2

    .line 582
    goto :goto_0

    .line 436
    nop

    :array_0
    .array-data 4
        0x7f0d0050
        0x7f0d004f
        0x7f0d0050
        0x7f0d004f
    .end array-data
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 807
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 809
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 811
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 812
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 365
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    .line 366
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    .line 367
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    .line 368
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->N:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    .line 369
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 781
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 782
    const v2, 0x102002c

    if-ne v0, v2, :cond_3

    .line 785
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->X:Landroid/support/v4/app/w;

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    .line 786
    if-eqz v0, :cond_0

    .line 787
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 801
    :goto_0
    return v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->onBackPressed()V

    move v0, v1

    .line 793
    goto :goto_0

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->m()V

    move v0, v1

    .line 796
    goto :goto_0

    .line 798
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 801
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->aa:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    :goto_1
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d(Z)V

    .line 727
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->L:Lcom/grubhub/AppBaseLibrary/android/review/a;

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/review/a;->c(Z)V

    .line 730
    :cond_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b:Ljava/lang/String;

    const-string v1, "Logout receiver already unregistered"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    :catch_1
    move-exception v0

    .line 720
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b:Ljava/lang/String;

    const-string v1, "Token receiver already unregistered."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 770
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 772
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v1, :cond_0

    .line 775
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/e;->d(I)V

    .line 777
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 589
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 592
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 593
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 594
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->d(Z)V

    .line 598
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 601
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v10

    .line 602
    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 603
    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v3

    .line 605
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v4, :cond_1

    .line 606
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setPastOrders(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V

    .line 609
    :cond_1
    if-eqz v0, :cond_3

    .line 611
    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->E()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->r:Ljava/util/LinkedHashSet;

    .line 614
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 619
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {v4, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/util/ArrayList;Z)V

    .line 621
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->f:Z

    if-nez v0, :cond_3

    .line 622
    invoke-interface {v10, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->l(Z)V

    .line 623
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->f:Z

    .line 629
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const v3, 0x7f08006d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 634
    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->aa:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.grubhub.AppBaseLibrary.android.utils.BROADCAST"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 640
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 641
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q:Landroid/net/Uri;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v0, :cond_f

    .line 644
    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 645
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v0, :cond_f

    .line 646
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q:Landroid/net/Uri;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v5

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v6

    move v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->a(Ljava/lang/String;ZZLandroid/net/Uri;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    move v0, v2

    .line 652
    :goto_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "deep_link_uri"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 653
    iput-object v8, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q:Landroid/net/Uri;

    .line 682
    :goto_2
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->i:Z

    if-eqz v1, :cond_5

    .line 685
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->c(Z)V

    .line 686
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    if-eqz v1, :cond_4

    .line 687
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->d:I

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->setDividerHeight(I)V

    .line 689
    :cond_4
    iput-boolean v9, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->i:Z

    .line 693
    :cond_5
    if-nez v0, :cond_6

    .line 694
    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 695
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w()V

    .line 702
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z()V

    .line 703
    return-void

    :cond_7
    move v0, v9

    .line 619
    goto/16 :goto_0

    .line 655
    :cond_8
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 657
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 658
    const-string v0, "search_address"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 659
    const-string v0, "order_type"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 661
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v0, :cond_e

    .line 662
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->M:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->p:Ljava/lang/String;

    move v3, v9

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->a(Ljava/lang/String;ZZLandroid/net/Uri;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    move v0, v2

    .line 667
    :goto_4
    const-string v1, "restaurant_id"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 668
    iput-object v8, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->p:Ljava/lang/String;

    goto :goto_2

    .line 670
    :cond_9
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 671
    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 672
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-eqz v0, :cond_c

    .line 673
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v5

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressLabel()Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    if-nez v0, :cond_a

    move v8, v2

    :goto_5
    invoke-virtual/range {v3 .. v8}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v9

    goto/16 :goto_2

    :cond_a
    move v8, v9

    goto :goto_5

    .line 676
    :cond_b
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 677
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    if-eqz v0, :cond_c

    .line 678
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->d()V

    :cond_c
    move v0, v9

    goto/16 :goto_2

    .line 696
    :cond_d
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/d;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/feedback/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 697
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->SEARCH_AFTER_PAST_ORDER:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    .line 698
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->K:Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->b(Z)V

    goto/16 :goto_3

    :cond_e
    move v0, v9

    goto :goto_4

    :cond_f
    move v0, v9

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 821
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 823
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    .line 825
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e()V

    .line 826
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a()V

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y()V

    .line 833
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->e()V

    .line 839
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->q:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->m:Z

    if-nez v0, :cond_1

    .line 843
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurants search results"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 847
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 851
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 853
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->g()V

    .line 855
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    .line 856
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->x:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->removeFooterView(Landroid/view/View;)Z

    .line 857
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g:Z

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;->g()V

    .line 863
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->R:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/a;

    .line 864
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    if-eqz v0, :cond_2

    .line 868
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->g()V

    .line 869
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->S:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 870
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->H:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 873
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    if-eqz v0, :cond_3

    .line 874
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;->g()V

    .line 875
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->T:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d/a;

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    if-eqz v0, :cond_4

    .line 879
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->g()V

    .line 880
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    .line 883
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    if-eqz v0, :cond_5

    .line 884
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->g()V

    .line 885
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->U:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 888
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    if-eqz v0, :cond_6

    .line 889
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->g()V

    .line 890
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->W:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 892
    :cond_6
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;->g()V

    .line 2035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->V:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g;

    .line 2037
    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->z:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b()V

    .line 2046
    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 2102
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->E()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->r:Ljava/util/LinkedHashSet;

    .line 2104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->v:Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2107
    :cond_0
    return-void
.end method
