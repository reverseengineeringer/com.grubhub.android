.class Lcom/grubhub/AppBaseLibrary/android/order/search/e;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 1734
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    .line 1735
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    .line 1736
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    .line 1737
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 2042
    const/4 v1, 0x0

    .line 2043
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2044
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 2045
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2046
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2047
    const/4 v0, 0x1

    .line 2054
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1763
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->getGroupType(I)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1764
    const/4 v0, 0x0

    .line 1777
    :goto_0
    return-object v0

    .line 1769
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1770
    :goto_1
    if-lez v2, :cond_2

    .line 1772
    :goto_2
    add-int v1, v2, v0

    if-ge p1, v1, :cond_3

    .line 1773
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1769
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1770
    goto :goto_2

    .line 1775
    :cond_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    goto :goto_0
.end method

.method public a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
    .locals 1

    .prologue
    .line 1782
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v0

    .line 1783
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1712
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 1793
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 1950
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1952
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v7

    .line 1953
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMaximum()I

    move-result v0

    .line 1955
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1956
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030093

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    .line 1961
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v8

    .line 1962
    const v0, 0x7f0f02e2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1963
    const v1, 0x7f0f02e3

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1964
    const v2, 0x7f0f02e1

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1966
    if-eqz v8, :cond_a

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1967
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1969
    const/4 v2, 0x0

    .line 1970
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1971
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getItemVariationId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v5, v2

    .line 1974
    :goto_2
    const/4 v2, 0x0

    .line 1975
    if-eqz v5, :cond_1

    .line 1976
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1977
    invoke-interface {v8, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getVariationalPrice(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 1978
    if-eqz v2, :cond_0

    .line 1985
    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_5

    .line 1986
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v9, 0x7f0803e6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1987
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1997
    :goto_3
    const/4 v2, 0x0

    .line 1998
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v5

    .line 1999
    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2000
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(II)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v5

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v5, v2

    .line 2003
    :goto_4
    instance-of v2, v3, Landroid/widget/RadioButton;

    if-eqz v2, :cond_7

    move-object v2, v3

    .line 2004
    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2008
    :cond_2
    :goto_5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2009
    if-eqz v5, :cond_8

    const v2, 0x7f0d003f

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2010
    if-eqz v5, :cond_9

    const v0, 0x7f0d003f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2013
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2025
    :goto_8
    return-object v4

    .line 1958
    :cond_3
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_0

    .line 1967
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1988
    :cond_5
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_6

    .line 1989
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f0803e6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1990
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1992
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1993
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2005
    :cond_7
    instance-of v2, v3, Landroid/widget/CheckBox;

    if-eqz v2, :cond_2

    .line 2006
    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 2009
    :cond_8
    const v2, 0x7f0d0051

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_6

    .line 2010
    :cond_9
    const v0, 0x7f0d0054

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_7

    .line 2016
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2017
    instance-of v0, v3, Landroid/widget/RadioButton;

    if-eqz v0, :cond_c

    .line 2018
    check-cast v3, Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2022
    :cond_b
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    .line 2019
    :cond_c
    instance-of v0, v3, Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    .line 2020
    check-cast v3, Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    :cond_d
    move v5, v2

    goto/16 :goto_4

    :cond_e
    move-object v5, v2

    goto/16 :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 2

    .prologue
    .line 1754
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->getGroupType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1755
    const/4 v0, 0x0

    .line 1757
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 1741
    const/4 v0, 0x0

    .line 1742
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1743
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1745
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1746
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1749
    :cond_1
    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 1788
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1

    .prologue
    .line 1803
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->c:Ljava/util/ArrayList;

    .line 1804
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    .line 1805
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1806
    :cond_1
    const/4 v0, 0x0

    .line 1808
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 1820
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1821
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->getGroupType(I)I

    move-result v0

    .line 1823
    packed-switch v0, :pswitch_data_0

    .line 1945
    :cond_0
    :goto_0
    return-object p3

    .line 1825
    :pswitch_0
    if-nez p3, :cond_1

    .line 1826
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1829
    :cond_1
    const v0, 0x7f0f02d8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1830
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1831
    const v1, 0x7f0803c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1833
    const v1, 0x7f0801ba

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1835
    const v0, 0x7f0803c2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1837
    :cond_2
    const v1, 0x7f0803be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1839
    const v1, 0x7f0801b5

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1841
    const v0, 0x7f0803be

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1847
    :pswitch_1
    if-nez p3, :cond_3

    .line 1848
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030090

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1851
    :cond_3
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v5

    .line 1852
    const v0, 0x7f0f02db

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1853
    const v1, 0x7f0f02dd

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1854
    const v2, 0x7f0f02d9

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1855
    const v2, 0x7f0f02dc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;

    .line 1857
    if-eqz v5, :cond_11

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1858
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1860
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0d0051

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1862
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getItemVariationId()I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getItemVariationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1865
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1867
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1868
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1869
    const/4 p2, 0x0

    .line 1871
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1872
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1926
    :cond_5
    :goto_2
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1934
    :goto_3
    if-eqz v2, :cond_0

    .line 1935
    if-eqz p2, :cond_12

    .line 1936
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->setOrientation(I)V

    goto/16 :goto_0

    .line 1858
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1873
    :cond_7
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1874
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->d:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1875
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    .line 1877
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1878
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1882
    :cond_9
    invoke-interface {v5, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptionsDescriptionsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1883
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1884
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1887
    :cond_a
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMaximum()I

    move-result v0

    .line 1888
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMinimum()I

    move-result v3

    .line 1891
    if-lez v3, :cond_b

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1892
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    :goto_5
    if-lez v3, :cond_c

    .line 1899
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0042

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1904
    :goto_6
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/ExpandableListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1906
    if-nez v3, :cond_5

    .line 1907
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1894
    :cond_b
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1901
    :cond_c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0054

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 1911
    :cond_d
    const/4 v4, 0x1

    if-ne v0, v4, :cond_e

    .line 1912
    const v0, 0x7f0803ba

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1913
    :cond_e
    if-lez v0, :cond_10

    .line 1914
    if-ne v0, v3, :cond_f

    .line 1915
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    const v4, 0x7f0803b9

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1917
    :cond_f
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    const v4, 0x7f0803bb

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1920
    :cond_10
    const v0, 0x7f0803b8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1928
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1930
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1931
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1938
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCaret;->setOrientation(I)V

    goto/16 :goto_0

    .line 1823
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1798
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 2030
    const/4 v0, 0x1

    return v0
.end method
