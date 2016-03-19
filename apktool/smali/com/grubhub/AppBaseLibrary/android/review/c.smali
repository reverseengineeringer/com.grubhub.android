.class public Lcom/grubhub/AppBaseLibrary/android/review/c;
.super Landroid/support/v4/app/ad;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/w;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/app/ad;-><init>(Landroid/support/v4/app/w;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 91
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewPageBaseFragment;->a()I

    move-result v0

    .line 93
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    const/4 v0, -0x2

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    .line 71
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->SINGLE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-ne v1, v2, :cond_0

    .line 72
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewQuestionFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewQuestionFragment;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewQuestionFragment;->a(I)V

    .line 85
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->RATING_REVIEW:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-ne v1, v2, :cond_1

    .line 76
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewRatingFragment;->a(I)V

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewQuestionFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewQuestionFragment;

    move-result-object v0

    .line 84
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewQuestionFragment;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)V
    .locals 2

    .prologue
    .line 39
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-eq v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    .line 46
    :cond_0
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->RATING_REVIEW:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->b:Z

    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/c;->c()V

    .line 51
    :cond_1
    return-void

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 107
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->b:Z

    if-eqz v1, :cond_0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
