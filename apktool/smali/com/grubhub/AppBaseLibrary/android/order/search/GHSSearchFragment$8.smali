.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZIIZ)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;ILcom/grubhub/AppBaseLibrary/android/dataServices/a/f;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->a:I

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1127
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_0

    .line 1129
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->a:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    const v1, 0x7f080513

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(ILandroid/view/View$OnClickListener;)V

    .line 1172
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Z)Z

    .line 1173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->r(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1175
    :cond_0
    return-void

    .line 1133
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->t(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->removeFooterView(Landroid/view/View;)Z

    .line 1134
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1137
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1138
    const v2, 0x7f080378

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1140
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1141
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;)V

    .line 1140
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    move-object v1, v7

    .line 1154
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f035d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    .line 1166
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedCuisines()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1167
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    goto/16 :goto_0

    .line 1152
    :cond_3
    const v0, 0x7f080374

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1169
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$8;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e()V

    goto/16 :goto_0
.end method
