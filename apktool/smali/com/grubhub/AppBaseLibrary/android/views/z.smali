.class Lcom/grubhub/AppBaseLibrary/android/views/z;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 926
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 927
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->b:Landroid/content/Context;

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    .line 929
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/z;)Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->d:Z

    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 961
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 932
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    .line 933
    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->d:Z

    .line 934
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/z;->notifyDataSetChanged()V

    .line 935
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 936
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    const v1, 0x7f0804f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(ILandroid/view/View$OnClickListener;)V

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x1

    return v0
.end method

.method public b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;
    .locals 1

    .prologue
    .line 966
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 969
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 947
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->n(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->n(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 948
    add-int/lit8 v0, v0, 0x1

    .line 952
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 975
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1024
    const/4 v0, 0x2

    .line 1028
    :goto_0
    return v0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    const/4 v0, 0x0

    goto :goto_0

    .line 1028
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 980
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/z;->getItemViewType(I)I

    move-result v3

    .line 982
    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1018
    :goto_0
    return-object p2

    .line 985
    :cond_0
    if-nez p2, :cond_1

    .line 986
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 989
    :cond_1
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/z;->b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    move-result-object v4

    .line 991
    const v0, 0x7f0f035b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 992
    const v1, 0x7f0f035c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 994
    iget-boolean v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->d:Z

    if-eqz v5, :cond_2

    .line 995
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1000
    :goto_1
    if-nez v3, :cond_3

    .line 1001
    const v3, 0x7f020144

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1002
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1013
    :goto_2
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1015
    :goto_3
    const v0, 0x7f0f035a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1016
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1004
    :cond_3
    const v3, 0x7f02013f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->d:Z

    if-eqz v1, :cond_4

    .line 1006
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    :goto_4
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/z;->b:Landroid/content/Context;

    const v3, 0x7f080514

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getDistanceInMiles()Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1008
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move-object v1, v2

    .line 1013
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x3

    return v0
.end method
