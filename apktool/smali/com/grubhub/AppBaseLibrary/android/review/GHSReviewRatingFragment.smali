.class public Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;
.super Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;
.source "SourceFile"


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

.field private i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/grubhub/AppBaseLibrary/android/review/d;

.field private l:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    return-object v0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v2, "review_survey"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->k:Lcom/grubhub/AppBaseLibrary/android/review/d;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    packed-switch p1, :pswitch_data_0

    .line 306
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f08045e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f080469

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f080460

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f08046b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f08045f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f08046a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f08045d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f080468

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 302
    :pswitch_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f08045c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f080467

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->c:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->p:Landroid/widget/TextView;

    const v1, 0x7f080462

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setValue(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setSkipped(Ljava/lang/Boolean;)V

    .line 267
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->p:Landroid/widget/TextView;

    const v1, 0x7f08047f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->q:Landroid/widget/TextView;

    const v1, 0x7f080463

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setSkipped(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/review/d;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/review/d;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->k:Lcom/grubhub/AppBaseLibrary/android/review/d;

    .line 75
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "rating_answer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 101
    const-string v0, "writeup_answer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "review_survey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->j:Ljava/util/HashMap;

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;

    .line 122
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 174
    :cond_3
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->setHasOptionsMenu(Z)V

    .line 175
    return-void

    .line 126
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getQuestionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 127
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getQuestionId()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getAnswerType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    move-result-object v6

    .line 129
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getAnswerValidations()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;

    move-result-object v7

    .line 131
    if-eqz v6, :cond_5

    .line 132
    sget-object v8, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$3;->a:[I

    invoke-virtual {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_0

    :cond_5
    move v0, v1

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 171
    goto :goto_0

    .line 134
    :pswitch_0
    if-nez v1, :cond_5

    .line 135
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setQuestionId(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->j:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->g:Ljava/lang/String;

    .line 142
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;->getMinWordCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 143
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;->getMinWordCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->c:I

    :cond_6
    move v0, v3

    move v1, v2

    .line 146
    goto :goto_1

    .line 150
    :pswitch_1
    if-nez v2, :cond_5

    .line 151
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v2, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->setQuestionId(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->j:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->f:Ljava/lang/String;

    .line 158
    if-eqz v7, :cond_7

    .line 159
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;->getMinRangeValue()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 160
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;->getMaxRangeValue()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 161
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;->getMinRangeValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->d:I

    .line 162
    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;->getMaxRangeValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->e:I

    :cond_7
    move v0, v1

    move v1, v3

    .line 165
    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    const v0, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 184
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const v0, 0x7f0f025d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    const v0, 0x7f0f025e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)V

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->setOnRatingSelectedListener(Lcom/grubhub/AppBaseLibrary/android/views/x;)V

    .line 198
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->d:I

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->e:I

    invoke-virtual {v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a(II)V

    .line 200
    const v0, 0x7f0f025f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->m:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0f0260

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->n:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f0f0262

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->p:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f0f0263

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->q:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0f0261

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->o:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->o:Landroid/view/View;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    :goto_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->setSelectedRating(Ljava/lang/Integer;)V

    .line 219
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0801f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    return-object v2

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->onDetach()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->k:Lcom/grubhub/AppBaseLibrary/android/review/d;

    .line 81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 242
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->onBackPressed()V

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 232
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    :cond_0
    const-string v0, "rating_answer"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    const-string v0, "writeup_answer"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method
