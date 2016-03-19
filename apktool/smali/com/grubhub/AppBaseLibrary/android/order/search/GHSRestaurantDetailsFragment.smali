.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

.field private d:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "restaurant_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "order_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method

.method private d()V
    .locals 10

    .prologue
    const v9, 0x7f0804c6

    const/4 v5, 0x0

    .line 184
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_8

    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->b:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getHoursOfOperation(Lcom/grubhub/AppBaseLibrary/android/order/g;)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 193
    const v1, 0x7f0f02f8

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getDayOfWeekString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getTimeRanges()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 197
    const-string v2, ""

    move v4, v5

    move v3, v5

    .line 199
    :goto_1
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getTimeRanges()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 201
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getTimeRanges()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    const/4 v1, 0x1

    .line 199
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 206
    :cond_1
    const v8, 0x7f0804ca

    invoke-virtual {p0, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 208
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ",\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, v3

    goto :goto_2

    .line 214
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 215
    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    :cond_4
    const v0, 0x7f0f02f9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 232
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_8
    return-void

    :cond_9
    move v1, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 176
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->d()V

    .line 177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 178
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->j()V

    .line 141
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->setHasOptionsMenu(Z)V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 94
    const v0, 0x7f03006b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    const v0, 0x7f0f0239

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 97
    const v0, 0x7f0f023b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->e:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0f023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 99
    const v0, 0x7f0f023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 101
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "restaurant_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->a:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "order_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->b:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->n()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->d()V

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 114
    :cond_1
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 84
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 121
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 128
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 130
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 131
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 133
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 159
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant info"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantDetailsFragment;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 165
    return-void
.end method
