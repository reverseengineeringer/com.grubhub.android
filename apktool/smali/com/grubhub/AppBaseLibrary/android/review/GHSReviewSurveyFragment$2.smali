.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Z)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getQuestionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->isSkipped()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "submit ratings and reviews"

    const-string v5, "rating question modal-skip question_cta"

    const-string v7, ""

    invoke-direct {v1, v3, v5, v7}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    if-eqz v1, :cond_0

    .line 131
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 134
    :cond_0
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/review/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;)V

    .line 141
    :cond_1
    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 142
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Ljava/lang/Integer;)V

    .line 147
    :goto_1
    return-void

    .line 122
    :cond_2
    const-string v1, "Yes"

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "submit ratings and reviews"

    const-string v5, "rating question modal-yes_cta"

    const-string v7, ""

    invoke-direct {v1, v3, v5, v7}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v1, "No"

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "submit ratings and reviews"

    const-string v5, "rating question modal-no_cta"

    const-string v7, ""

    invoke-direct {v1, v3, v5, v7}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08047d

    const v2, 0x7f08047c

    const v3, 0x7f0803e5

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Z)V

    goto :goto_1

    :cond_5
    move-object v1, v6

    goto/16 :goto_0
.end method
