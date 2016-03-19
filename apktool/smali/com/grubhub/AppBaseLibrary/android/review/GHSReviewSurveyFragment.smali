.class public Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v4/app/w;

.field private e:Lcom/grubhub/AppBaseLibrary/android/review/c;

.field private f:Lcom/grubhub/AppBaseLibrary/android/review/d;

.field private g:Z

.field private h:Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

.field private k:Landroid/widget/ViewFlipper;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/support/v4/view/de;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 63
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->n:Landroid/support/v4/view/de;

    .line 105
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    .line 334
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getNodeNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 340
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    return-object p1
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;)",
            "Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;-><init>()V

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v2, "review_survey"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e:Lcom/grubhub/AppBaseLibrary/android/review/c;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)Lcom/grubhub/AppBaseLibrary/android/utils/c/c;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    return-object p1
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const v11, 0x7f0f0008

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 396
    if-eqz p1, :cond_5

    .line 397
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->SINGLE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-ne v0, v1, :cond_4

    .line 398
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 400
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;

    .line 401
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getQuestionId()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;->getAnswerOptions()Ljava/util/ArrayList;

    move-result-object v5

    move v2, v3

    .line 405
    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 408
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 409
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel;

    .line 410
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 413
    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 414
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel;->getAnswerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v6, v4, v7, v8, v9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 415
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 416
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel;->getNextNodeNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 417
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v0, v11, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 421
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 426
    :cond_1
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->isSkippable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;

    .line 428
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v4, v10, v10, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getSkipNextNodeNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    :goto_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 439
    invoke-direct {p0, v12}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Z)V

    .line 457
    :cond_2
    :goto_3
    return-void

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, v11, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 441
    :cond_4
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->RATING_REVIEW:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-ne v0, v1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v11, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v12}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 444
    invoke-direct {p0, v12}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Z)V

    goto :goto_3

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 448
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {v0, v11, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 451
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 454
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 455
    invoke-direct {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Z)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e:Lcom/grubhub/AppBaseLibrary/android/review/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/review/c;->b()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 351
    :goto_0
    if-nez p1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->f:Lcom/grubhub/AppBaseLibrary/android/review/d;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->f:Lcom/grubhub/AppBaseLibrary/android/review/d;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/review/d;->h()V

    .line 372
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a:Ljava/lang/Integer;

    .line 373
    return-void

    :cond_1
    move v0, v2

    .line 349
    goto :goto_0

    .line 355
    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a:Ljava/lang/Integer;

    if-eq v3, p1, :cond_0

    .line 356
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e:Lcom/grubhub/AppBaseLibrary/android/review/c;

    invoke-virtual {v4, v3}, Lcom/grubhub/AppBaseLibrary/android/review/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)V

    .line 358
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->invalidate()V

    .line 361
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->g:Z

    .line 363
    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->n:Landroid/support/v4/view/de;

    invoke-interface {v0, v2}, Landroid/support/v4/view/de;->a(I)V

    goto :goto_1

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 368
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    invoke-virtual {v2, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->a(IZ)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 388
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/c/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->f:Lcom/grubhub/AppBaseLibrary/android/review/d;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Landroid/support/v4/app/w;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->d:Landroid/support/v4/app/w;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->d:Landroid/support/v4/app/w;

    const v1, 0x7f0f026a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 320
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    if-eqz v1, :cond_0

    .line 321
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 169
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/review/d;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/review/d;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->f:Lcom/grubhub/AppBaseLibrary/android/review/d;

    .line 172
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a:Ljava/lang/Integer;

    .line 185
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "review_survey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->c:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->d:Landroid/support/v4/app/w;

    .line 187
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->d:Landroid/support/v4/app/w;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/c;-><init>(Landroid/support/v4/app/w;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e:Lcom/grubhub/AppBaseLibrary/android/review/c;

    .line 189
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->setHasOptionsMenu(Z)V

    .line 190
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 194
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 195
    const v0, 0x7f030070

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 197
    const v0, 0x7f0f026a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    .line 198
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->setHintMargins(I)V

    .line 199
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    invoke-virtual {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->setSwipeEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->e:Lcom/grubhub/AppBaseLibrary/android/review/c;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->setAdapter(Landroid/support/v4/view/bi;)V

    .line 201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->n:Landroid/support/v4/view/de;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->a(Landroid/support/v4/view/de;)V

    .line 203
    const v0, 0x7f0f0265

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 204
    const v1, 0x7f0f0266

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 205
    const v2, 0x7f0f0267

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/Button;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->i:Ljava/util/ArrayList;

    .line 208
    const v3, 0x7f0f0264

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->k:Landroid/widget/ViewFlipper;

    .line 209
    const v3, 0x7f0f0268

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    .line 210
    const v3, 0x7f0f0269

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->m:Landroid/widget/Button;

    .line 211
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->m:Landroid/widget/Button;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Ljava/lang/Integer;)V

    .line 261
    return-object v4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->j:Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->b()V

    .line 288
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->f:Lcom/grubhub/AppBaseLibrary/android/review/d;

    .line 178
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 304
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->onBackPressed()V

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 294
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 269
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->g:Z

    .line 273
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->g:Z

    .line 279
    return-void
.end method
