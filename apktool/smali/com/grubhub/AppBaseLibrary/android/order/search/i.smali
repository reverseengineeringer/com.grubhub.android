.class public Lcom/grubhub/AppBaseLibrary/android/order/search/i;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

.field private final b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 1721
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    .line 1722
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->c:Landroid/view/LayoutInflater;

    .line 1723
    return-void
.end method


# virtual methods
.method public a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
    .locals 1

    .prologue
    .line 1760
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    move-result-object v0

    .line 1761
    if-eqz v0, :cond_0

    .line 1762
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 1764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1747
    :cond_0
    const/4 v0, 0x0

    .line 1753
    :goto_0
    return-object v0

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1750
    if-gez p1, :cond_2

    .line 1751
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    goto :goto_0

    .line 1753
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    goto :goto_0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1714
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 1784
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    move-result-object v1

    .line 1785
    const/4 v0, 0x0

    .line 1786
    if-eqz v1, :cond_0

    .line 1787
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    .line 1790
    :cond_0
    if-eqz v0, :cond_1

    .line 1791
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1793
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v2, 0x7f0f02de

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1826
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1828
    if-nez p4, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030091

    invoke-virtual {v0, v1, p5, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 1832
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 1835
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->isPopular()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1836
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    :goto_0
    const v1, 0x7f0f01a8

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1843
    const v2, 0x7f0f02df

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1844
    const v3, 0x7f0f01a7

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1846
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1847
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->hasRequiredChoicesWithExtraCharges()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080457

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1852
    :goto_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemPrice()Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v2, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1855
    const v0, 0x7f0f02e0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1856
    if-eqz p3, :cond_3

    move v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    return-object p4

    .line 1838
    :cond_1
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1851
    :cond_2
    const v1, 0x7f080456

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 1856
    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1737
    :cond_0
    const/4 v0, 0x0

    .line 1740
    :goto_0
    return v0

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    .line 1740
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1714
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getMenuSections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1728
    :cond_0
    const/4 v0, 0x0

    .line 1730
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 1770
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    move-result-object v1

    .line 1771
    const/4 v0, 0x0

    .line 1772
    if-eqz v1, :cond_0

    .line 1773
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionId()Ljava/lang/String;

    move-result-object v0

    .line 1775
    :cond_0
    if-eqz v0, :cond_1

    .line 1776
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1778
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1804
    if-nez p3, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1808
    :cond_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1809
    const v0, 0x7f0f02d7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1810
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;->getMenuSectionName()Ljava/lang/String;

    move-result-object v2

    .line 1811
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1813
    if-eqz v2, :cond_1

    const v0, 0x7f08038e

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1814
    const v0, 0x7f0d004c

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1821
    :goto_0
    return-object p3

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/i;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const v1, 0x7f08038f

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1816
    const v0, 0x7f0d004e

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1818
    :cond_2
    const v0, 0x7f0d004a

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1799
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 1863
    const/4 v0, 0x1

    return v0
.end method
