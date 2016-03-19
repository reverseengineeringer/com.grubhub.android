.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a()V

    .line 362
    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;->i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->k()V

    .line 369
    :cond_0
    return-void
.end method
