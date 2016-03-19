.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final answer_id:Ljava/lang/String;

.field public final question_id:Ljava/lang/String;

.field public final skipped:Ljava/lang/Boolean;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getQuestionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->question_id:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getAnswerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->answer_id:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->value:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSAnswerDataModel;->isSkipped()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->skipped:Ljava/lang/Boolean;

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->question_id:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->answer_id:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->value:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2AnswerDTO;->skipped:Ljava/lang/Boolean;

    goto :goto_0
.end method
