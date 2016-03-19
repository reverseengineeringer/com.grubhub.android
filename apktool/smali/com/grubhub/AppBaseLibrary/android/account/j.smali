.class public Lcom/grubhub/AppBaseLibrary/android/account/j;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 915
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 916
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->b:Ljava/util/ArrayList;

    .line 917
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->c:Ljava/lang/String;

    .line 918
    return-void
.end method


# virtual methods
.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->c:Ljava/lang/String;

    .line 946
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->b:Ljava/util/ArrayList;

    .line 936
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/j;->notifyDataSetChanged()V

    .line 937
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 925
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 955
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 960
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 962
    if-nez p2, :cond_1

    .line 963
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 968
    :goto_0
    const v0, 0x7f0f02fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 969
    const v1, 0x7f0f02fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 970
    const v2, 0x7f0f02fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 971
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 972
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 976
    :goto_1
    const v3, 0x7f0f02b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 977
    const v4, 0x7f0f02b3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 978
    const v5, 0x7f0f02b5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 980
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    iget-object v6, v6, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 981
    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/account/j$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/account/j$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/j;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 992
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 994
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v5

    .line 996
    if-eqz v5, :cond_0

    .line 997
    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, p1}, Lcom/grubhub/AppBaseLibrary/android/account/g;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/h;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {v3, v6, p1}, Lcom/grubhub/AppBaseLibrary/android/account/h;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    invoke-static {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Landroid/widget/TextView;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 1002
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1004
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    :goto_2
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->c:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->c:Ljava/lang/String;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1011
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1013
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1021
    :cond_0
    :goto_3
    return-object p2

    .line 965
    :cond_1
    const v0, 0x7f0f02b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 974
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1006
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1015
    :cond_4
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1016
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1017
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3
.end method
