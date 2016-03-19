.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/d;


# instance fields
.field private A:Z

.field private B:Lcom/grubhub/AppBaseLibrary/android/account/j;

.field public i:Landroid/view/View$OnTouchListener;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/grubhub/AppBaseLibrary/android/account/i;

.field private w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

.field private x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

.field private y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

.field private z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->A:Z

    .line 95
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->i:Landroid/view/View$OnTouchListener;

    .line 904
    return-void
.end method

.method public static a(Ljava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 229
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;ZZLjava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;-><init>()V

    .line 248
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string v2, "selected_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "selectable_addresses"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v2, "cross_street_required"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v2, "deliver_to_restaurant_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "retain_delivery_radius_spinner"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const-string v2, "display_pickup_option"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 257
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->s:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 691
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 695
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->o:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    :cond_0
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->o:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->u:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/account/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V

    .line 707
    :cond_2
    :goto_0
    return-void

    .line 700
    :cond_3
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->r:Z

    if-nez v1, :cond_2

    .line 701
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->u:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 702
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0

    .line 704
    :cond_4
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 7

    .prologue
    .line 715
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->u:Ljava/lang/String;

    .line 717
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 718
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$12;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$13;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 745
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 780
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 787
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a()V

    .line 788
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const v1, 0x7f0f0271

    .line 463
    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->j:Z

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 899
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 6

    .prologue
    .line 796
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;

    invoke-direct {v3, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 797
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$3;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 824
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 839
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 860
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a()V

    .line 861
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->n:Z

    if-eqz v0, :cond_1

    .line 477
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->t:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(Ljava/lang/String;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/i;->c(Ljava/lang/String;)V

    .line 487
    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 890
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->k:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 653
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "address_delete"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 656
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->l:Z

    return p1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->m:Z

    return p1
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/i;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Z)V

    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->r:Z

    return p1
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    return-object v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b()V

    return-void
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->p:Z

    return v0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->A:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->r:Z

    .line 879
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(Ljava/util/ArrayList;)V

    .line 497
    :cond_0
    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method public c(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->r:Z

    .line 874
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 306
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/i;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/i;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/i;

    if-eqz v0, :cond_0

    .line 309
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/i;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->t:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectable_addresses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->n:Z

    .line 266
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cross_street_required"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->o:Z

    .line 267
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deliver_to_restaurant_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->u:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "retain_delivery_radius_spinner"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->p:Z

    .line 269
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "display_pickup_option"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->q:Z

    .line 271
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->k:I

    .line 273
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->s:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/j;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->s:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->t:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->setHasOptionsMenu(Z)V

    .line 278
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 321
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 323
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    const v0, 0x7f030073

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/j;->notifyDataSetChanged()V

    .line 286
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->q:Z

    if-eqz v0, :cond_0

    .line 287
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 288
    const v2, 0x7f03009b

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 289
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$7;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 300
    :cond_0
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    .line 317
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 347
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 349
    instance-of v2, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v2, :cond_0

    .line 350
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 359
    :goto_0
    return v0

    .line 353
    :cond_1
    const v2, 0x7f0f036a

    if-ne v0, v2, :cond_3

    .line 354
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->v:Lcom/grubhub/AppBaseLibrary/android/account/i;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->o:Z

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->u:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/i;->a(ZLjava/lang/String;)V

    :cond_2
    move v0, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 329
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 331
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 333
    const v1, 0x7f0f0369

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 341
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->r:Z

    .line 455
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 368
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->m:Z

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$8;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$9;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    .line 389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 400
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;->a()V

    .line 415
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "saved addresses"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 418
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->B:Lcom/grubhub/AppBaseLibrary/android/account/j;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/j;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 424
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;->g()V

    .line 426
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;->g()V

    .line 431
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->g()V

    .line 436
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->g()V

    .line 441
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 444
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_4

    .line 447
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 449
    :cond_4
    return-void
.end method
