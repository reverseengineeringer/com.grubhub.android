.class Lcom/grubhub/AppBaseLibrary/android/order/cart/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;I)V
    .locals 0

    .prologue
    .line 1823
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->b:I

    .line 1825
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1829
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "modify your order"

    const-string v3, "edit item_CTA"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1835
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1836
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 1838
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getOriginalItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/util/List;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    move-result-object v9

    .line 1840
    if-eqz v9, :cond_5

    .line 1841
    invoke-interface {v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemChoiceGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 1843
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1844
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getSelectedItemOptions()Ljava/util/ArrayList;

    move-result-object v2

    .line 1846
    if-eqz v2, :cond_3

    .line 1847
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 1848
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;

    .line 1851
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;->optionRefId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v7

    .line 1852
    if-eqz v7, :cond_1

    .line 1853
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;->optionRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1856
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1857
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1864
    :cond_3
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 1865
    if-eqz v0, :cond_6

    .line 1866
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v2

    .line 1869
    :goto_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 1870
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    .line 1871
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getOriginalItemId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 1873
    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 1875
    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isPhoneOnly()Z

    move-result v5

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 1876
    invoke-static {v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 1877
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1869
    invoke-static/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZLjava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    move-result-object v0

    .line 1878
    invoke-virtual {v0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)V

    .line 1879
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemSpecialInstructions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(ILjava/lang/String;Ljava/util/HashMap;)V

    .line 1880
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0159

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1881
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1882
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 1891
    :cond_4
    :goto_3
    return-void

    .line 1884
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1885
    if-eqz v0, :cond_4

    .line 1886
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const v2, 0x7f080274

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const v3, 0x7f0802fa

    .line 1887
    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0803e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    .line 1886
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_3

    :cond_6
    move-object v2, v4

    goto/16 :goto_2
.end method
