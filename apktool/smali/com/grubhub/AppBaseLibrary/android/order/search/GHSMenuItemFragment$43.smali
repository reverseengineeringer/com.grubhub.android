.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMaximum()I

    move-result v5

    .line 416
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 417
    :goto_0
    if-eqz v3, :cond_1

    .line 420
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 422
    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-ne v5, v1, :cond_3

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_1
    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v1, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 445
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 446
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e()V

    .line 450
    :cond_1
    return v2

    .line 416
    :cond_2
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    .line 432
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 433
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v5, :cond_5

    .line 436
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1
.end method
