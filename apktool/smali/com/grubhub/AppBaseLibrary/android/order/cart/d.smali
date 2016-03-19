.class Lcom/grubhub/AppBaseLibrary/android/order/cart/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 1958
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1959
    invoke-direct {p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a(Landroid/content/Context;)V

    .line 1960
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1968
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1969
    const v1, 0x7f03007f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1971
    const v0, 0x7f0f02b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->b:Landroid/widget/TextView;

    .line 1972
    const v0, 0x7f0f02b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->d:Landroid/widget/LinearLayout;

    .line 1973
    const v0, 0x7f0f02b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->c:Landroid/widget/TextView;

    .line 1974
    const v0, 0x7f0f02b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->e:Landroid/widget/TextView;

    .line 1975
    const v0, 0x7f0f02ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->f:Landroid/widget/TextView;

    .line 1976
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 6

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->e:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const v3, 0x7f080456

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2056
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;)V
    .locals 11

    .prologue
    const v10, 0x7f080456

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 1984
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a(Ljava/lang/String;)V

    .line 1985
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 1989
    :cond_0
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1990
    :goto_1
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotal()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotal()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1991
    :goto_2
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1993
    :goto_3
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a(I)V

    .line 1994
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a(F)V

    .line 1995
    if-le v0, v9, :cond_5

    .line 1996
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1997
    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->b(F)V

    .line 2002
    :goto_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2052
    :cond_1
    :goto_5
    return-void

    :cond_2
    move v0, v1

    .line 1989
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1990
    goto :goto_2

    :cond_4
    move v4, v3

    .line 1991
    goto :goto_3

    .line 1999
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 2007
    :cond_6
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getSelectedItemOptions()Ljava/util/ArrayList;

    move-result-object v2

    .line 2008
    if-eqz v2, :cond_e

    .line 2010
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2011
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;

    .line 2012
    if-eqz v0, :cond_7

    .line 2013
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;->optionRefId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2017
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;

    .line 2018
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getOriginalItemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/util/List;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    move-result-object v2

    .line 2020
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 2024
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;->optionRefId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemChoiceGroupOption(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v6

    .line 2025
    if-eqz v6, :cond_9

    .line 2026
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionDescription()Ljava/lang/String;

    move-result-object v2

    .line 2028
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->hasPriceDependency()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2030
    const/4 v0, 0x0

    .line 2031
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2032
    invoke-interface {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getVariationalPrice(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 2033
    if-eqz v0, :cond_a

    .line 2038
    :cond_b
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_f

    .line 2039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (+ "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v7, v10}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v2, v0

    .line 2044
    :cond_c
    :goto_9
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2041
    :cond_d
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (+ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v7, v10}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 2049
    :cond_e
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemSpecialInstructions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemSpecialInstructions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2050
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemSpecialInstructions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    move-object v0, v2

    goto :goto_8
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    return-void
.end method

.method public b(F)V
    .locals 7

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ea "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const v4, 0x7f080456

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2071
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;-><init>(Landroid/content/Context;)V

    .line 2072
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextColor(I)V

    .line 2073
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextSize(IF)V

    .line 2075
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const v2, 0x7f0803a0

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setFont(Ljava/lang/String;)V

    .line 2076
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2077
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2080
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;-><init>(Landroid/content/Context;)V

    .line 2081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2082
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextSize(IF)V

    .line 2083
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const v2, 0x7f0803a1

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setFont(Ljava/lang/String;)V

    .line 2084
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2085
    return-void
.end method
