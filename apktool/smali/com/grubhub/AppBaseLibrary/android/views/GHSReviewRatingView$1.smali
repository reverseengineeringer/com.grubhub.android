.class Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    const v0, 0x7f0f0007

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 35
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->setSelectedRating(Ljava/lang/Integer;)V

    .line 37
    :cond_0
    return-void
.end method
