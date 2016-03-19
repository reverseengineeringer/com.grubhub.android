.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getNodeNumber()Ljava/lang/Integer;
.end method

.method public abstract getQuestions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRules()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIRulesDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSkipNextNodeNumber()Ljava/lang/Integer;
.end method

.method public abstract getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;
.end method

.method public abstract isSkippable()Z
.end method
