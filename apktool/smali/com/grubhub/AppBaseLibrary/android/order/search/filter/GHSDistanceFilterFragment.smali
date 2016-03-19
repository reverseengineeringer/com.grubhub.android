.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a:Landroid/widget/SeekBar;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->d:Z

    return p1
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 138
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    if-le v0, v3, :cond_0

    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08049a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 139
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    if-ne v0, v3, :cond_1

    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08049c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08049b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 109
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    if-lt v1, v0, :cond_1

    .line 110
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setDistanceRadius(F)V

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->d:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 115
    return-void

    .line 112
    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setDistanceRadius(F)V

    goto :goto_0

    .line 114
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getDefaultRadius()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->d:Z

    .line 132
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    const-string v1, "savedDistanceFilterValue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 37
    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    .line 49
    :goto_0
    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->d:Z

    .line 50
    return-void

    .line 40
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 42
    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    goto :goto_0

    .line 45
    :cond_1
    float-to-int v0, v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 54
    const v0, 0x7f030051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    const v0, 0x7f0f016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0f0171

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a:Landroid/widget/SeekBar;

    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->c:I

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 63
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->b()V

    .line 65
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;->a()V

    .line 74
    return-void
.end method
