package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import android.os.Parcelable;
import java.util.ArrayList;

public abstract interface GHSIOrderReviewSurveyDataModel$GHSIQuestionDataModel
  extends Parcelable
{
  public abstract ArrayList<GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel> getAnswerOptions();
  
  public abstract GHSIOrderReviewSurveyDataModel.GHSAnswerType getAnswerType();
  
  public abstract GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel getAnswerValidations();
  
  public abstract String getDisplayText();
  
  public abstract String getFacet();
  
  public abstract String getQuestionId();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */