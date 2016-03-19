.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# instance fields
.field private a:Landroid/view/View;

.field private b:[Z

.field private c:[Landroid/view/View;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    aget-object v1, v1, v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 168
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c(ILandroid/view/View;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    .line 126
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    add-int/lit8 v1, p1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b(ILandroid/view/View;)V

    .line 133
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a(I)V

    .line 134
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b(I)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->e:Z

    .line 136
    return-void

    .line 130
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b(ILandroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a(ILandroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c(ILandroid/view/View;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 178
    add-int/lit8 v0, p1, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 180
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c(ILandroid/view/View;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method private b(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c(ILandroid/view/View;)V

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 157
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 158
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;-><init>()V

    .line 96
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->setRatingsOneSelected(Z)V

    .line 97
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->setRatingsTwoSelected(Z)V

    .line 98
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->setRatingsThreeSelected(Z)V

    .line 99
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->setRatingsFourSelected(Z)V

    .line 100
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->setRatingsFiveSelected(Z)V

    .line 101
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->e:Z

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->setHasUserSelected(Z)V

    .line 102
    invoke-virtual {p1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setRatingsModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;)V

    .line 103
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->e:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 104
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    aput-boolean v1, v2, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b()V

    .line 114
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->e:Z

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    .line 31
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    const-string v1, "hasRatingsFilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->d:Z

    .line 36
    const-string v1, "savedRatingsFilterModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->isRatingsOneSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 39
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->isRatingsTwoSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 40
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->isRatingsThreeSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 41
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->isRatingsFourSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 42
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b:[Z

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->isRatingsFiveSelected()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 43
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->getHasUserSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->e:Z

    .line 45
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 49
    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0205

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0206

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0207

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0208

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->c:[Landroid/view/View;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a()V

    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->b()V

    .line 63
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->d:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;->a:Landroid/view/View;

    return-object v0
.end method
