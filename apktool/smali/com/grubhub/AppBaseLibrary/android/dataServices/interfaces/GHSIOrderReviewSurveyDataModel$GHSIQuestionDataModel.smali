.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getAnswerOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnswerType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;
.end method

.method public abstract getAnswerValidations()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSIAnswerValidationDataModel;
.end method

.method public abstract getDisplayText()Ljava/lang/String;
.end method

.method public abstract getFacet()Ljava/lang/String;
.end method

.method public abstract getQuestionId()Ljava/lang/String;
.end method
