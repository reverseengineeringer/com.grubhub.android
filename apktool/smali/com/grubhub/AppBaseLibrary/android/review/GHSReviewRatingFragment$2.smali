.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/review/d;->a(Ljava/lang/String;I)V

    .line 213
    :cond_0
    return-void
.end method
