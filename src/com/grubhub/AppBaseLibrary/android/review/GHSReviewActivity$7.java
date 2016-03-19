package com.grubhub.AppBaseLibrary.android.review;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.HashMap;

class GHSReviewActivity$7
  implements com.grubhub.AppBaseLibrary.android.dataServices.net.e<ArrayList<GHSIOrderReviewSurveyDataModel>>
{
  GHSReviewActivity$7(GHSReviewActivity paramGHSReviewActivity) {}
  
  public void a(final ArrayList<GHSIOrderReviewSurveyDataModel> paramArrayList)
  {
    GHSReviewActivity.a(a, paramArrayList);
    GHSReviewActivity.b(a, true);
    GHSReviewActivity.g(a).b();
    final com.grubhub.AppBaseLibrary.android.utils.e locale = d.a(GHSReviewActivity.h(a));
    if (a)
    {
      GHSReviewActivity.b(a, GHSReviewActivity.h(a));
      return;
    }
    GHSReviewActivity.a(a, com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_REVIEW_SURVEY_INVALID);
    paramArrayList = GHSApplication.a().b().N();
    if (paramArrayList != null) {}
    for (paramArrayList = paramArrayList.getUdid();; paramArrayList = null)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("SURVEY_UNSUPPORTED_ERROR", new HashMap() {});
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */