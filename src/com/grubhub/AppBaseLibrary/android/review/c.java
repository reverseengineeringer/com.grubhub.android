package com.grubhub.AppBaseLibrary.android.review;

import android.support.v4.app.Fragment;
import android.support.v4.app.ad;
import android.support.v4.app.w;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSSurveyType;
import java.util.ArrayList;

public class c
  extends ad
{
  private ArrayList<GHSIOrderReviewSurveyDataModel> a;
  private boolean b;
  
  public c(w paramw)
  {
    super(paramw);
  }
  
  public int a(Object paramObject)
  {
    if (((paramObject instanceof GHSReviewPageBaseFragment)) && (((GHSReviewPageBaseFragment)paramObject).a() == -1)) {
      return -2;
    }
    return super.a(paramObject);
  }
  
  public Fragment a(int paramInt)
  {
    if (paramInt < a.size())
    {
      localObject = (GHSIOrderReviewSurveyDataModel)a.get(paramInt);
      if (((GHSIOrderReviewSurveyDataModel)localObject).getType() == GHSIOrderReviewSurveyDataModel.GHSSurveyType.SINGLE)
      {
        localObject = GHSReviewQuestionFragment.a((GHSIOrderReviewSurveyDataModel)localObject);
        ((GHSReviewQuestionFragment)localObject).a(paramInt);
        return (Fragment)localObject;
      }
      if (((GHSIOrderReviewSurveyDataModel)localObject).getType() == GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW)
      {
        localObject = GHSReviewRatingFragment.a((GHSIOrderReviewSurveyDataModel)localObject);
        ((GHSReviewRatingFragment)localObject).a(paramInt);
        return (Fragment)localObject;
      }
    }
    Object localObject = GHSReviewQuestionFragment.a(null);
    ((GHSReviewQuestionFragment)localObject).a(-1);
    return (Fragment)localObject;
  }
  
  public void a(GHSIOrderReviewSurveyDataModel paramGHSIOrderReviewSurveyDataModel)
  {
    if ((paramGHSIOrderReviewSurveyDataModel != null) && (paramGHSIOrderReviewSurveyDataModel.getType() != GHSIOrderReviewSurveyDataModel.GHSSurveyType.UNKNOWN))
    {
      if (a == null) {
        a = new ArrayList();
      }
      if (paramGHSIOrderReviewSurveyDataModel.getType() == GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW) {
        break label67;
      }
    }
    label67:
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a.add(paramGHSIOrderReviewSurveyDataModel);
      c();
      return;
    }
  }
  
  public int b()
  {
    int i;
    if (a == null) {
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = a.size();
      i = j;
    } while (!b);
    return j + 1;
  }
  
  public GHSIOrderReviewSurveyDataModel b(int paramInt)
  {
    if ((a != null) && (paramInt >= 0) && (paramInt < a.size())) {
      return (GHSIOrderReviewSurveyDataModel)a.get(paramInt);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */