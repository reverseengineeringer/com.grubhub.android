.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 347
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 350
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    const v1, 0x7f080513

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(ILandroid/view/View$OnClickListener;)V

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Z)Z

    .line 386
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->removeFooterView(Landroid/view/View;)Z

    .line 353
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;)V

    .line 355
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    const v1, 0x7f080373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;)V

    invoke-virtual {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
