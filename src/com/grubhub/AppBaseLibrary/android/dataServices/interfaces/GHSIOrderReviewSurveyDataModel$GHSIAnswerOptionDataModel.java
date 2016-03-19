package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import android.os.Parcelable;

public abstract interface GHSIOrderReviewSurveyDataModel$GHSIAnswerOptionDataModel
  extends Parcelable
{
  public abstract String getAnswerId();
  
  public abstract String getDisplayText();
  
  public abstract Integer getNextNodeNumber();
  
  public abstract String getValue();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */