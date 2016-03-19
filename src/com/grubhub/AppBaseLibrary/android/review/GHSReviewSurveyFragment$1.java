package com.grubhub.AppBaseLibrary.android.review;

import android.support.v4.view.de;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSSurveyType;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSReviewSurveyFragment$1
  implements de
{
  GHSReviewSurveyFragment$1(GHSReviewSurveyFragment paramGHSReviewSurveyFragment) {}
  
  public void a(int paramInt)
  {
    GHSIOrderReviewSurveyDataModel localGHSIOrderReviewSurveyDataModel = GHSReviewSurveyFragment.a(a).b(paramInt);
    if ((localGHSIOrderReviewSurveyDataModel != null) && (!GHSReviewSurveyFragment.b(a)))
    {
      if (localGHSIOrderReviewSurveyDataModel.getType() != GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW) {
        break label101;
      }
      GHSReviewSurveyFragment.a(a, new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "provide written review modal_impression", "", "true"));
    }
    for (;;)
    {
      h.a().a(GHSReviewSurveyFragment.c(a));
      GHSReviewSurveyFragment.a(a, true);
      GHSReviewSurveyFragment.a(a, localGHSIOrderReviewSurveyDataModel);
      GHSReviewSurveyFragment.b(a, localGHSIOrderReviewSurveyDataModel);
      return;
      label101:
      GHSReviewSurveyFragment.a(a, new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal_impression", "", "true"));
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void b(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewSurveyFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */