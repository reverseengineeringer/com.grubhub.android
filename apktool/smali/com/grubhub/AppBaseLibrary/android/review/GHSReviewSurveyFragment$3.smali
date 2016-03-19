.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 214
    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->f(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0f026a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 216
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    if-eqz v1, :cond_5

    .line 217
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b()Ljava/util/Map;

    move-result-object v0

    .line 223
    :goto_0
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v7

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 228
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->isSkipped()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v7

    :goto_2
    and-int/2addr v1, v2

    .line 231
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/review/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;)V

    goto :goto_1

    :cond_1
    move v2, v4

    .line 228
    goto :goto_2

    .line 237
    :cond_2
    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 238
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Ljava/lang/Integer;)V

    .line 245
    :goto_3
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v4, "submit ratings and reviews"

    const-string v5, "provide written review modal-submit_cta"

    if-eqz v1, :cond_4

    const-string v0, "rating and written review"

    :goto_4
    invoke-direct {v3, v4, v5, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 249
    return-void

    .line 240
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08047d

    const v2, 0x7f08047c

    const v3, 0x7f0803e5

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Z)V

    move v1, v4

    goto :goto_3

    .line 245
    :cond_4
    const-string v0, "rating only"

    goto :goto_4

    :cond_5
    move-object v0, v6

    goto/16 :goto_0
.end method
