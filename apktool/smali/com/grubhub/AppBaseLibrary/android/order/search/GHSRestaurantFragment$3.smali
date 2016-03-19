.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->c:Z

    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 807
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 808
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->P()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    .line 811
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 816
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->c:Z

    if-nez v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->p(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    .line 822
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->q(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->r(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 835
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)V

    .line 838
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->t(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/m;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 840
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->findAllMenuSectionNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 841
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;Landroid/view/LayoutInflater;)V

    .line 842
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 845
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->getGroupCount()I

    move-result v2

    move v0, v1

    .line 846
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-gt v0, v3, :cond_3

    .line 847
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 829
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    goto :goto_0

    .line 850
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 853
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->v(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 855
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/support/v4/app/w;

    move-result-object v0

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    .line 856
    if-eqz v0, :cond_4

    .line 857
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 861
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 862
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getSearchText()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 864
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Ljava/lang/String;)V

    .line 868
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 872
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/b/a;

    move-result-object v0

    if-nez v0, :cond_7

    .line 873
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->x(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/a;

    .line 875
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/b/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 876
    sget-object v0, Lcom/google/android/gms/b/c;->c:Lcom/google/android/gms/b/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->y(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/common/api/s;

    .line 890
    :cond_7
    :goto_2
    return-void

    .line 881
    :cond_8
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 882
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;)V

    invoke-virtual {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 803
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    return-void
.end method
