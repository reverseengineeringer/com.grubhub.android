.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;-><init>()V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v1, "savedSortByBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    :cond_0
    const v1, 0x7f0f01af

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/support/v4/app/Fragment;I)V

    .line 125
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;I)V
    .locals 5

    .prologue
    .line 208
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a:Ljava/lang/String;

    const-string v1, "Fragment type %s must implement GHSIFilterFragmentInterface."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;-><init>()V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v1, "savedOptionsFilterBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 139
    :cond_0
    const v1, 0x7f0f01b3

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/support/v4/app/Fragment;I)V

    .line 140
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;-><init>()V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v1, "savedFutureOrderBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 154
    :cond_0
    const v1, 0x7f0f01b4

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/support/v4/app/Fragment;I)V

    .line 155
    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;-><init>()V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    const-string v1, "savedPriceFilterBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    :cond_0
    const v1, 0x7f0f01b1

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/support/v4/app/Fragment;I)V

    .line 170
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;-><init>()V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v1, "savedRatingsFilterBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 183
    :cond_0
    const v1, 0x7f0f01b0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/support/v4/app/Fragment;I)V

    .line 184
    return-void
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;-><init>()V

    .line 192
    if-eqz p1, :cond_0

    .line 193
    const-string v1, "savedDistanceFilterBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 197
    :cond_0
    const v1, 0x7f0f01b2

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/support/v4/app/Fragment;I)V

    .line 198
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 2

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 100
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 108
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;->d()V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->a(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->d(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->e(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->f(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->b(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->c(Landroid/os/Bundle;)V

    .line 55
    const-string v1, "savedOrderIsPickup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->b:Z

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0f01ad

    const/16 v2, 0x8

    .line 69
    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->b:Z

    if-nez v1, :cond_0

    .line 73
    const v1, 0x7f0f01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e()Z

    move-result v1

    .line 78
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    :cond_1
    const v1, 0x7f0f01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 62
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurant search results filters"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 65
    return-void
.end method
