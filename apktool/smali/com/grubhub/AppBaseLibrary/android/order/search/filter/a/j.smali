.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "savedSortByValue"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCurrentSortOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "hasQueryString"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSearchTerm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v2, "isPickup"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->getSortFragments()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->getSortFragments()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "availableSortIds"

    new-instance v2, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->getSortFragments()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    :cond_0
    return-object v1

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
