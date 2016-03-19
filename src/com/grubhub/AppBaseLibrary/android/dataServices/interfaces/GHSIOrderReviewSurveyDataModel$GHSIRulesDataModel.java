package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import android.os.Parcelable;
import java.util.ArrayList;

public abstract interface GHSIOrderReviewSurveyDataModel$GHSIRulesDataModel
  extends Parcelable
{
  public abstract ArrayList<String> getPreconditions();
  
  public abstract String getQuestionId();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */