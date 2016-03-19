package com.grubhub.AppBaseLibrary.android.review;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.HashMap;

class GHSReviewSurveyFragment$2
  implements View.OnClickListener
{
  GHSReviewSurveyFragment$2(GHSReviewSurveyFragment paramGHSReviewSurveyFragment) {}
  
  public void onClick(View paramView)
  {
    GHSReviewSurveyFragment.b(a, false);
    GHSCreateOrderReviewDataModel.GHSAnswerDataModel localGHSAnswerDataModel = (GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramView.getTag();
    HashMap localHashMap = new HashMap();
    localHashMap.put(localGHSAnswerDataModel.getQuestionId(), localGHSAnswerDataModel);
    com.grubhub.AppBaseLibrary.android.utils.c.c localc;
    if (localGHSAnswerDataModel != null) {
      if (localGHSAnswerDataModel.isSkipped().booleanValue()) {
        localc = new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal-skip question_cta", "");
      }
    }
    for (;;)
    {
      if (localc != null) {
        h.a().a(localc);
      }
      if ((com.grubhub.AppBaseLibrary.android.utils.d.a(localHashMap)) && (com.grubhub.AppBaseLibrary.android.utils.d.a(GHSReviewSurveyFragment.d(a), localHashMap)))
      {
        if (GHSReviewSurveyFragment.e(a) != null) {
          GHSReviewSurveyFragment.e(a).a(localGHSAnswerDataModel);
        }
        paramView = (Integer)paramView.getTag(2131689480);
        GHSReviewSurveyFragment.a(a, paramView);
        return;
        if ("Yes".equalsIgnoreCase(localGHSAnswerDataModel.getValue()))
        {
          localc = new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal-yes_cta", "");
          continue;
        }
        if ("No".equalsIgnoreCase(localGHSAnswerDataModel.getValue())) {
          localc = new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal-no_cta", "");
        }
      }
      else
      {
        com.grubhub.AppBaseLibrary.android.c.a(paramView.getContext(), 2131231869, 2131231868, 2131231717, 0, 0, null);
        GHSReviewSurveyFragment.b(a, true);
        return;
      }
      localc = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewSurveyFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */