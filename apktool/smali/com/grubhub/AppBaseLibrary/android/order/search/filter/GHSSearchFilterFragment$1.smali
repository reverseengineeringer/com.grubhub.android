.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    .line 99
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    const-string v1, "cuisines"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;

    .line 100
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    .line 101
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-string v2, "refine"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 107
    :cond_1
    if-eqz v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->f_()Z

    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 116
    :cond_3
    return-void
.end method
