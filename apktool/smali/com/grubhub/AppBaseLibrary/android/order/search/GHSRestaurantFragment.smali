.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/grubhub/AppBaseLibrary/android/a;
.implements Lcom/grubhub/AppBaseLibrary/android/account/b;
.implements Lcom/grubhub/AppBaseLibrary/android/account/i;
.implements Lcom/grubhub/AppBaseLibrary/android/address/a;
.implements Lcom/grubhub/AppBaseLibrary/android/address/b;
.implements Lcom/grubhub/AppBaseLibrary/android/order/h;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/c;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/f;
.implements Lcom/grubhub/AppBaseLibrary/android/views/s;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Landroid/view/MenuItem;

.field private C:Landroid/view/MenuItem;

.field private D:Landroid/support/v4/app/w;

.field private E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

.field private F:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

.field private G:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

.field private H:Lcom/grubhub/AppBaseLibrary/android/order/search/g;

.field private I:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private J:Lcom/google/android/gms/b/a;

.field private K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

.field private L:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

.field private M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

.field private N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

.field private O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

.field private P:Landroid/widget/ImageView;

.field private Q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private R:Landroid/widget/ExpandableListView;

.field private S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

.field private T:Landroid/view/View;

.field private U:Lcom/grubhub/AppBaseLibrary/android/views/m;

.field private V:Landroid/widget/FrameLayout;

.field private W:Landroid/widget/TextView;

.field private X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private h:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/net/Uri;

.field private l:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j:Ljava/util/ArrayList;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->m:Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->z:Z

    .line 203
    return-void
.end method

.method private A()Lcom/grubhub/AppBaseLibrary/android/views/m;
    .locals 3

    .prologue
    .line 557
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;-><init>(Landroid/content/Context;)V

    .line 558
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y:Z

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(ZLjava/util/LinkedHashSet;)V

    .line 559
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setCouponsVisible(Z)V

    .line 560
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setDisplayMode(Lcom/grubhub/AppBaseLibrary/android/views/q;)V

    .line 561
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    invoke-direct {v1, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/views/m;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setRestaurantHeaderViewListener(Lcom/grubhub/AppBaseLibrary/android/views/p;)V

    .line 745
    return-object v0
.end method

.method static synthetic A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private B()V
    .locals 7

    .prologue
    .line 913
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 916
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 917
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    const-string v2, "utm_medium"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    const-string v3, "utm_source"

    .line 918
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    const-string v4, "utm_campaign"

    .line 919
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    const-string v5, "utm_content"

    .line 920
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    const-string v6, "utm_term"

    .line 921
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 917
    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 931
    return-void
.end method

.method private C()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1056
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCrossStreetRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 1057
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v1

    .line 1058
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v6

    const v7, 0x7f0f0238

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    .line 1059
    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;ZZLjava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 1060
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1062
    return-void

    :cond_0
    move v2, v4

    .line 1056
    goto :goto_0

    :cond_1
    move v5, v4

    .line 1057
    goto :goto_1
.end method

.method private D()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1703
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1706
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 1709
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1711
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1712
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;I)I
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->n:I

    return p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/a;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->J:Lcom/google/android/gms/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZLandroid/net/Uri;Z)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "search_address"

    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    const-string v1, "order_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 223
    const-string v1, "deep_link"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v1, "one_press_back"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v1, "deep_link_data"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v1, "requires_past_orders_refresh"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;-><init>()V

    .line 229
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->setArguments(Landroid/os/Bundle;)V

    .line 231
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->l:Ljava/util/LinkedHashSet;

    return-object p1
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 2

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1022
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsSavedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDeliveryToDinerLocation()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 1023
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1024
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    .line 1025
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1029
    :goto_0
    return-void

    .line 1027
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->C()V

    goto :goto_0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 982
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1008
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y:Z

    if-eqz v0, :cond_1

    .line 988
    invoke-direct {p0, p1, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    goto :goto_0

    .line 989
    :cond_1
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p3, v0, :cond_5

    if-eqz p1, :cond_2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsPrecise()Z

    move-result v0

    if-nez v0, :cond_5

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 991
    :goto_1
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {p2, v1, p4}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a(Ljava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 990
    goto :goto_1

    :cond_4
    move v1, v2

    .line 991
    goto :goto_2

    .line 993
    :cond_5
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p3, v0, :cond_6

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDeliveryToDinerLocation()Z

    move-result v0

    if-nez v0, :cond_6

    .line 995
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 996
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 997
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 998
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v2

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/i;->ADD_ITEM:Lcom/grubhub/AppBaseLibrary/android/order/i;

    const-string v5, "restaurant menu"

    move-object v3, p1

    .line 995
    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/i;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    move-result-object v0

    .line 1002
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1006
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1039
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1040
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->w:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->t:Z

    if-eqz v0, :cond_0

    .line 1041
    iput-boolean v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->w:Z

    .line 1043
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1044
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->z:Z

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZLjava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0238

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1047
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1050
    :cond_0
    return-void

    .line 1043
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V
    .locals 7

    .prologue
    .line 942
    if-eqz p2, :cond_0

    .line 944
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 946
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$5;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    .line 954
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$6;

    invoke-direct {v1, p0, v6, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 962
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 968
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;->a()V

    .line 970
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1071
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 1073
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1075
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 764
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 765
    if-nez v0, :cond_1

    .line 766
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    move-object v2, v0

    .line 771
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 773
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    .line 779
    :goto_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 783
    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v5

    .line 784
    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$20;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$20;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    new-instance v9, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$2;

    invoke-direct {v9, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 802
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 803
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;

    move-object v2, p0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 893
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;

    invoke-direct {v1, p0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 906
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a()V

    .line 907
    return-void

    :cond_0
    move-object v3, v4

    .line 776
    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/support/v4/app/w;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->l:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->H:Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    return-object v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->n:I

    return v0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->n:I

    return v0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    return-object v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->B()V

    return-void
.end method

.method static synthetic q(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u:Z

    return v0
.end method

.method static synthetic r(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->v:Z

    return v0
.end method

.method static synthetic s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->z()V

    return-void
.end method

.method static synthetic t(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/m;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    return-object v0
.end method

.method static synthetic u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic v(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->s:Z

    return v0
.end method

.method static synthetic w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/b/a;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->J:Lcom/google/android/gms/b/a;

    return-object v0
.end method

.method static synthetic x(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/b/a;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private y()Lcom/google/android/gms/b/a;
    .locals 4

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 519
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 523
    const-string v3, "http://schema.org/ViewAction"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/b/a;

    move-result-object v0

    .line 526
    :cond_0
    return-object v0
.end method

.method static synthetic y(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->I:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic z(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/c;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->G:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    return-object v0
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 530
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isPhoneOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->z:Z

    .line 533
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->z:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->T:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->T:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;

    .line 537
    const v1, 0x7f0803c4

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->setText(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$18;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 1550
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->a(Landroid/widget/AbsListView;I)V

    .line 1551
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->a()V

    .line 1553
    :cond_0
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1652
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    invoke-static {v0, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    .line 1653
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 1654
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0238

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 1655
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 1656
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1657
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1658
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-eqz v0, :cond_0

    .line 1300
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$9;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$10;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 1315
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1349
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1360
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->a()V

    .line 1362
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 1619
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f0238

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    const/4 v3, 0x0

    .line 1645
    invoke-static {v2, p1, v3, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 1646
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1647
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1648
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1288
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 4

    .prologue
    .line 1382
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 1388
    if-nez v0, :cond_0

    .line 1389
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 1392
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 1393
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1395
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o:Z

    .line 1397
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1398
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-eqz v0, :cond_0

    .line 1594
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->d:Ljava/lang/String;

    .line 1595
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1597
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->clearFocus()V

    .line 1295
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1624
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 1627
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    .line 1628
    if-eqz v0, :cond_1

    .line 1629
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1630
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1631
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1632
    iput-boolean v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    .line 1633
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o:Z

    .line 1634
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1640
    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1368
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1371
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 1374
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1376
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    const/4 v1, 0x1

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1377
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;I)V

    .line 1610
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 1611
    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;)V

    .line 1614
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->w:Z

    .line 508
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    .line 1602
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    .line 1402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->r:Z

    .line 1403
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1404
    if-eqz v0, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1406
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1410
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1419
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a()V

    .line 1423
    :cond_0
    return-void
.end method

.method public f_()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1252
    .line 1253
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const v3, 0x7f0f0238

    invoke-virtual {v0, v3}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1254
    if-eqz v0, :cond_6

    .line 1255
    instance-of v3, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v3, :cond_0

    .line 1256
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 1264
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 1281
    :goto_1
    return v0

    .line 1257
    :cond_0
    instance-of v3, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    if-nez v3, :cond_1

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    if-eqz v0, :cond_6

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->d()Z

    move v0, v1

    .line 1260
    goto :goto_0

    .line 1267
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b()V

    move v0, v1

    .line 1269
    goto :goto_1

    .line 1270
    :cond_3
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->x:Z

    if-eqz v0, :cond_4

    .line 1271
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->x:Z

    move v0, v2

    .line 1272
    goto :goto_1

    .line 1273
    :cond_4
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->v:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    if-eqz v0, :cond_5

    .line 1276
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/h;->i()V

    move v0, v2

    .line 1279
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1281
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public g()V
    .locals 7

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1430
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1434
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1443
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a()V

    .line 1447
    :cond_0
    return-void
.end method

.method public g_()V
    .locals 0

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D()V

    .line 1676
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 1665
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D()V

    .line 1666
    return-void
.end method

.method public i()V
    .locals 7

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1452
    if-eqz v0, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1459
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1460
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 1463
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1472
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a()V

    .line 1476
    :cond_0
    return-void
.end method

.method public j()V
    .locals 7

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1481
    if-eqz v0, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1483
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1487
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1496
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a()V

    .line 1500
    :cond_0
    return-void
.end method

.method public k()V
    .locals 7

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1505
    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->d()Z

    .line 1509
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1518
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a()V

    .line 1522
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1527
    if-eqz v0, :cond_0

    .line 1528
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1529
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b()V

    .line 1536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->q:Z

    .line 1537
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 1542
    return-void
.end method

.method public n()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;ZZ)V

    .line 1169
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 238
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    .line 242
    :cond_0
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->F:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    .line 246
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->G:Lcom/grubhub/AppBaseLibrary/android/order/cart/c;

    .line 250
    :cond_2
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    if-eqz v0, :cond_3

    .line 251
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->H:Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    .line 253
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    .line 261
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 262
    const-string v0, "restaurant_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    .line 267
    if-eqz p1, :cond_2

    .line 268
    const-string v0, "search_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 269
    const-string v0, "order_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 270
    const-string v0, "requires_past_orders_refresh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A:Z

    .line 271
    const-string v0, "address_validated"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    .line 279
    :goto_0
    const-string v0, "deep_link"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u:Z

    .line 280
    const-string v0, "one_press_back"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->v:Z

    .line 281
    const-string v0, "deep_link_data"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->k:Landroid/net/Uri;

    .line 283
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y:Z

    .line 286
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c:Ljava/lang/String;

    .line 289
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->E()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->l:Ljava/util/LinkedHashSet;

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    .line 294
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->s:Z

    .line 297
    :cond_1
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->setHasOptionsMenu(Z)V

    .line 299
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->I:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 300
    return-void

    .line 273
    :cond_2
    const-string v0, "search_address"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 274
    const-string v0, "order_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 275
    const-string v0, "requires_past_orders_refresh"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A:Z

    .line 276
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    goto :goto_0

    .line 288
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1079
    const/high16 v0, 0x7f110000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1080
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v1, :cond_0

    .line 1082
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/e;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/e;->d(I)V

    .line 1085
    :cond_0
    const v0, 0x7f0f0368

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->C:Landroid/view/MenuItem;

    .line 1086
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->C:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1092
    :goto_0
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->B:Landroid/view/MenuItem;

    .line 1093
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->B:Landroid/view/MenuItem;

    const v1, 0x7f030017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1094
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->B:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 1095
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$8;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    const v0, 0x7f0f0071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->P:Landroid/widget/ImageView;

    .line 1104
    const v0, 0x7f0f0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1105
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 1106
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    .line 1107
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1108
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x7f080456

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    :goto_1
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->q:Z

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->P:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040032

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->P:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1116
    iput-boolean v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->q:Z

    .line 1118
    :cond_1
    return-void

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->C:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1110
    :cond_3
    const-string v1, "$0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 313
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 315
    const v0, 0x7f0f0231

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 317
    const v0, 0x7f0f0235

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    .line 318
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    const v1, 0x7f0f02d7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->W:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f0f0236

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    .line 320
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->setAlternateHeader(Landroid/view/View;)V

    .line 322
    const v0, 0x7f0f0237

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 323
    const v1, 0x7f0f022f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    .line 324
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->setSearchResultsContainer(Landroid/view/ViewGroup;)V

    .line 325
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->setSearchBarListener(Lcom/grubhub/AppBaseLibrary/android/views/s;)V

    .line 327
    const v0, 0x7f0f0233

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setClickable(Z)V

    .line 330
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 332
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A()Lcom/grubhub/AppBaseLibrary/android/views/m;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 335
    const v0, 0x7f0f0234

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->T:Landroid/view/View;

    .line 336
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->z()V

    .line 338
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$12;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 382
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1139
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 1141
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->x:Z

    .line 1142
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/q;->onBackPressed()V

    .line 1148
    :goto_0
    return v0

    .line 1144
    :cond_0
    const v2, 0x7f0f0368

    if-ne v1, v2, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->F:Lcom/grubhub/AppBaseLibrary/android/order/search/l;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1148
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->t:Z

    .line 390
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 1122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1124
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 1126
    if-eqz v1, :cond_0

    .line 1127
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1130
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 1131
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 1133
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 397
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/e;

    if-eqz v1, :cond_0

    .line 399
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/e;->d(Z)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->U:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a()V

    .line 408
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->t:Z

    .line 409
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 304
    const-string v0, "search_address"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    const-string v0, "order_type"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 306
    const-string v0, "address_validated"

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string v0, "requires_past_orders_refresh"

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 1198
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 1199
    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 1202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    .line 1203
    add-int v4, p2, p3

    .line 1205
    if-gt p2, v0, :cond_2

    if-gt v0, v4, :cond_2

    .line 1206
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->R:Landroid/widget/ExpandableListView;

    sub-int/2addr v0, p2

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1207
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v4, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->setSyncView(Landroid/view/View;)V

    .line 1213
    :goto_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->a(Landroid/widget/AbsListView;III)V

    .line 1217
    if-eqz v2, :cond_0

    if-nez p2, :cond_3

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getBottom()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1241
    :cond_1
    :goto_1
    return-void

    .line 1209
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->setSyncView(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 1224
    :cond_3
    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    .line 1227
    instance-of v2, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    if-eqz v2, :cond_1

    .line 1228
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1229
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionName()Ljava/lang/String;

    move-result-object v0

    .line 1230
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->W:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    if-eqz v0, :cond_4

    const v2, 0x7f08038e

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1232
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    const v2, 0x7f0d004c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1239
    :goto_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->setSyncView(Landroid/view/View;)V

    goto :goto_1

    .line 1233
    :cond_4
    const v2, 0x7f08038f

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1234
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    const v2, 0x7f0d004e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 1236
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->V:Landroid/widget/FrameLayout;

    const v2, 0x7f0d004a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->X:Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->a(Landroid/widget/AbsListView;I)V

    .line 1247
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 414
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 416
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-nez v0, :cond_3

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->S:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d()V

    .line 421
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A:Z

    if-eqz v0, :cond_2

    .line 422
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c:Ljava/lang/String;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$14;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$15;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 435
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 441
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$17;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 448
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a()V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->I:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 458
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->J:Lcom/google/android/gms/b/a;

    if-eqz v0, :cond_1

    .line 459
    sget-object v0, Lcom/google/android/gms/b/c;->c:Lcom/google/android/gms/b/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->I:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->J:Lcom/google/android/gms/b/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/common/api/s;

    .line 461
    :cond_1
    return-void

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 453
    :cond_3
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->B()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 468
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->I:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->J:Lcom/google/android/gms/b/a;

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/google/android/gms/b/c;->c:Lcom/google/android/gms/b/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->I:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->J:Lcom/google/android/gms/b/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/d;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/common/api/s;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->g()V

    .line 475
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->M:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->L:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->L:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->g()V

    .line 480
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->L:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;->g()V

    .line 485
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->K:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/g/b;

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;->g()V

    .line 490
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->O:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h;

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    if-eqz v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->g()V

    .line 495
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->N:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 498
    :cond_5
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_6

    .line 499
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 501
    :cond_6
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/h;->j()V

    .line 1176
    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/h;->k()V

    .line 1183
    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 1671
    return-void
.end method

.method public s()V
    .locals 5

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1682
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    if-eqz v1, :cond_1

    .line 1684
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 1685
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 1686
    if-nez v1, :cond_0

    .line 1687
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 1689
    :cond_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 1690
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1691
    invoke-interface {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1693
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/h;->s()V

    .line 1695
    :cond_1
    return-void
.end method

.method public t()V
    .locals 4

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    move-result-object v0

    .line 1160
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0238

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    .line 1161
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    .line 1162
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1163
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1164
    return-void
.end method

.method public u()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1558
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->r:Z

    if-nez v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 1561
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    move-result-object v0

    .line 1562
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->D:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0238

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    .line 1563
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1565
    iput-boolean v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->r:Z

    .line 1567
    :cond_0
    return-void
.end method

.method public v()V
    .locals 7

    .prologue
    .line 1572
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1578
    return-void
.end method

.method public w()V
    .locals 7

    .prologue
    .line 1583
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu search results"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1589
    return-void
.end method
