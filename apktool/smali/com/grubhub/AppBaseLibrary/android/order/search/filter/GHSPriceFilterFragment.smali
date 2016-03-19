.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# instance fields
.field private a:Landroid/view/View;

.field private b:[Z

.field private c:[Landroid/widget/ToggleButton;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_3

    .line 125
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    add-int/lit8 v3, p1, 0x1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_2

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    aput-boolean v0, v2, p1

    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a(ILandroid/widget/ToggleButton;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b(I)V

    .line 136
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c(I)V

    .line 137
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->e:Z

    .line 138
    return-void

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    aput-boolean v0, v2, p1

    goto :goto_0
.end method

.method private a(ILandroid/widget/ToggleButton;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setActivated(Z)V

    .line 147
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setSelected(Z)V

    .line 148
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a(I)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a(ILandroid/widget/ToggleButton;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 158
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a(ILandroid/widget/ToggleButton;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 167
    add-int/lit8 v0, p1, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 169
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a(ILandroid/widget/ToggleButton;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;-><init>()V

    .line 97
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceOneSelected(Z)V

    .line 98
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceTwoSelected(Z)V

    .line 99
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceThreeSelected(Z)V

    .line 100
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceFourSelected(Z)V

    .line 101
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setPriceFiveSelected(Z)V

    .line 102
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->e:Z

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->setHasUserSelected(Z)V

    .line 103
    invoke-virtual {p1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setPriceModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;)V

    .line 104
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->e:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 105
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    .line 112
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->e:Z

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    .line 32
    new-array v0, v1, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    .line 35
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    const-string v1, "hasPriceFilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->d:Z

    .line 37
    const-string v1, "savedPriceFilterModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->isPriceOneSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 40
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->isPriceTwoSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 41
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->isPriceThreeSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 42
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->isPriceFourSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 43
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b:[Z

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->isPriceFiveSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 44
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->getHasUserSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->e:Z

    .line 46
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 50
    const v0, 0x7f030067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f01ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 54
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0200

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 55
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0201

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 56
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0202

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 57
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->c:[Landroid/widget/ToggleButton;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0203

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a()V

    .line 61
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->b()V

    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->d:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a:Landroid/view/View;

    return-object v0
.end method
