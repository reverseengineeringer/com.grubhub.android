package com.grubhub.AppBaseLibrary.android.review;

import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

class GHSReviewSurveyFragment$3
  implements View.OnClickListener
{
  GHSReviewSurveyFragment$3(GHSReviewSurveyFragment paramGHSReviewSurveyFragment) {}
  
  public void onClick(View paramView)
  {
    Object localObject = GHSReviewSurveyFragment.f(a).a(2131690090);
    if ((localObject instanceof GHSReviewRatingFragment)) {}
    for (localObject = ((GHSReviewRatingFragment)localObject).b();; localObject = null)
    {
      int i;
      if ((com.grubhub.AppBaseLibrary.android.utils.d.a((Map)localObject)) && (com.grubhub.AppBaseLibrary.android.utils.d.a(GHSReviewSurveyFragment.d(a), (Map)localObject)))
      {
        localObject = ((Map)localObject).values().iterator();
        i = 1;
        if (((Iterator)localObject).hasNext())
        {
          GHSCreateOrderReviewDataModel.GHSAnswerDataModel localGHSAnswerDataModel = (GHSCreateOrderReviewDataModel.GHSAnswerDataModel)((Iterator)localObject).next();
          if (!localGHSAnswerDataModel.isSkipped().booleanValue()) {}
          for (int j = 1;; j = 0)
          {
            j = i & j;
            i = j;
            if (GHSReviewSurveyFragment.e(a) == null) {
              break;
            }
            GHSReviewSurveyFragment.e(a).a(localGHSAnswerDataModel);
            i = j;
            break;
          }
        }
        paramView = (Integer)paramView.getTag(2131689480);
        GHSReviewSurveyFragment.a(a, paramView);
        localObject = h.a();
        if (i == 0) {
          break label223;
        }
      }
      label223:
      for (paramView = "rating and written review";; paramView = "rating only")
      {
        ((h)localObject).a(new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "provide written review modal-submit_cta", paramView));
        return;
        com.grubhub.AppBaseLibrary.android.c.a(paramView.getContext(), 2131231869, 2131231868, 2131231717, 0, 0, null);
        GHSReviewSurveyFragment.b(a, true);
        i = 0;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewSurveyFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */