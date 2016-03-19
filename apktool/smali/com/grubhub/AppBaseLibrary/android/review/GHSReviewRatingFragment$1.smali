.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/views/x;


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
    .line 190
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setSkipped(Ljava/lang/Boolean;)V

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;I)V

    .line 196
    return-void
.end method
