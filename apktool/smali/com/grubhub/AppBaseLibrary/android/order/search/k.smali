.class Lcom/grubhub/AppBaseLibrary/android/order/search/k;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    .line 2118
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2119
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2122
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->clear()V

    .line 2123
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->addAll(Ljava/util/Collection;)V

    .line 2124
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 2128
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2133
    check-cast p2, Lcom/grubhub/AppBaseLibrary/android/views/m;

    .line 2135
    if-nez p2, :cond_0

    .line 2136
    new-instance p2, Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;-><init>(Landroid/content/Context;)V

    .line 2137
    invoke-virtual {p2, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setCouponsVisible(Z)V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v1

    .line 2141
    :goto_0
    if-eqz v3, :cond_3

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->MATCHING_ITEMS:Lcom/grubhub/AppBaseLibrary/android/views/q;

    :goto_1
    invoke-virtual {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setDisplayMode(Lcom/grubhub/AppBaseLibrary/android/views/q;)V

    .line 2142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(ZLjava/util/LinkedHashSet;)V

    .line 2143
    if-eqz v3, :cond_1

    .line 2145
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setMatchingItemsAltColorEnabled(Z)V

    .line 2148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 2149
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/k;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 2151
    return-object p2

    :cond_2
    move v3, v2

    .line 2140
    goto :goto_0

    .line 2141
    :cond_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->CONDENSED:Lcom/grubhub/AppBaseLibrary/android/views/q;

    goto :goto_1

    :cond_4
    move v0, v2

    .line 2145
    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 2156
    const/4 v0, 0x1

    return v0
.end method
