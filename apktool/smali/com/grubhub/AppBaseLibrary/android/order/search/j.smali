.class Lcom/grubhub/AppBaseLibrary/android/order/search/j;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    .line 402
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 403
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->clear()V

    .line 407
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->b(Ljava/util/List;)V

    .line 408
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;

    .line 412
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->notifyDataSetChanged()V

    .line 415
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 419
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 424
    check-cast p2, Lcom/grubhub/AppBaseLibrary/android/views/v;

    .line 426
    if-nez p2, :cond_0

    .line 427
    new-instance p2, Lcom/grubhub/AppBaseLibrary/android/views/v;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/v;-><init>(Landroid/content/Context;)V

    .line 430
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/v;->setContentExpanded(Z)V

    .line 431
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;

    .line 432
    invoke-virtual {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/v;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReview;)V

    .line 434
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method
