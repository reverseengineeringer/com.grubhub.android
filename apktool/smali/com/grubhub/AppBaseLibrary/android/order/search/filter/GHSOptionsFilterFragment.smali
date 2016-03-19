.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 223
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f0f01c2

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    .line 181
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isSelected()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 185
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isSelected()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 186
    instance-of v3, v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;

    if-eqz v3, :cond_1

    .line 187
    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->setChecked(Z)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->DELIVERY_OFFERED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->DELIVERY_OFFERED:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    .line 194
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 115
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    .line 117
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const v2, 0x7f030044

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 123
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->b(Ljava/lang/String;)I

    move-result v5

    .line 126
    if-eqz v5, :cond_3

    .line 127
    const v2, 0x7f0f0105

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :cond_3
    const v2, 0x7f0f0106

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 145
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    .line 164
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->b:Z

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    move-result-object v1

    .line 209
    if-nez v1, :cond_0

    .line 223
    :goto_0
    return v0

    .line 213
    :cond_0
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$2;->a:[I

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    const v0, 0x7f020181

    goto :goto_0

    .line 217
    :pswitch_1
    const v0, 0x7f020182

    goto :goto_0

    .line 219
    :pswitch_2
    const v0, 0x7f020184

    goto :goto_0

    .line 221
    :pswitch_3
    const v0, 0x7f020183

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->setSingleValueRefinements(Ljava/util/Map;)V

    .line 72
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setFilterFragmentsModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;)V

    .line 75
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 76
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    .line 85
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    move-result-object v2

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/c/a/b;->OPEN_NOW:Lcom/grubhub/AppBaseLibrary/android/c/a/b;

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->setSelected(Z)V

    .line 86
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v2, v3

    .line 85
    goto :goto_1

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a()V

    .line 94
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->b:Z

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    :try_start_0
    const-string v1, "savedOptionsFilterValues"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->b:Z

    .line 48
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->c:Ljava/util/Map;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f03005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a(Landroid/view/ViewGroup;)V

    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a()V

    .line 65
    return-void
.end method
