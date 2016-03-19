package com.grubhub.AppBaseLibrary.android.review;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel;
import java.util.ArrayList;

public class GHSReviewQuestionFragment
  extends GHSReviewPageBaseFragment
{
  private GHSIOrderReviewSurveyDataModel b;
  
  public static GHSReviewQuestionFragment a(GHSIOrderReviewSurveyDataModel paramGHSIOrderReviewSurveyDataModel)
  {
    GHSReviewQuestionFragment localGHSReviewQuestionFragment = new GHSReviewQuestionFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("review_survey", paramGHSIOrderReviewSurveyDataModel);
    localGHSReviewQuestionFragment.setArguments(localBundle);
    return localGHSReviewQuestionFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((GHSIOrderReviewSurveyDataModel)getArguments().getParcelable("review_survey"));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramViewGroup.getContext();
    paramLayoutInflater = paramLayoutInflater.inflate(2130903150, paramViewGroup, false);
    if ((b != null) && (b.getQuestions() != null) && (!b.getQuestions().isEmpty())) {
      ((TextView)paramLayoutInflater.findViewById(2131690076)).setText(((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)b.getQuestions().get(0)).getDisplayText());
    }
    paramLayoutInflater.setContentDescription(paramBundle.getString(2131231222) + " " + (a + 1));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewQuestionFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */