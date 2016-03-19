.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/grubhub/AppBaseLibrary/android/a/a;

.field private f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    const v1, 0x7f0f0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->d:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->e:Lcom/grubhub/AppBaseLibrary/android/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    const v1, 0x7f0f0284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->c:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b()V

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Lcom/grubhub/AppBaseLibrary/android/c/a/e;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a()I

    move-result v1

    .line 151
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->d:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 153
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    const v2, 0x7f0f0287

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    .line 154
    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/c/a/c;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->d:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setCurrentSortOption(Ljava/lang/String;)V

    .line 168
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->i:Z

    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedSort(Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->h:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->RELEVANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a(Ljava/lang/String;)V

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->i:Z

    .line 185
    return-void

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->j:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DISTANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->a:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    const-string v1, "hasQueryString"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->h:Z

    .line 54
    const-string v1, "isPickup"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->j:Z

    .line 55
    const-string v1, "availableSortIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->k:Ljava/util/List;

    .line 56
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->k:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    .line 58
    const-string v1, "savedSortByValue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->e:Lcom/grubhub/AppBaseLibrary/android/a/a;

    .line 68
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->f:Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->a()V

    .line 83
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
