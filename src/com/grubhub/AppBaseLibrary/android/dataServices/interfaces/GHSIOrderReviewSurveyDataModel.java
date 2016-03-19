package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import android.os.Parcelable;
import java.util.ArrayList;

public abstract interface GHSIOrderReviewSurveyDataModel
  extends Parcelable
{
  public abstract Integer getNodeNumber();
  
  public abstract ArrayList<GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel> getQuestions();
  
  public abstract ArrayList<GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel> getRules();
  
  public abstract Integer getSkipNextNodeNumber();
  
  public abstract GHSIOrderReviewSurveyDataModel.GHSSurveyType getType();
  
  public abstract boolean isSkippable();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */