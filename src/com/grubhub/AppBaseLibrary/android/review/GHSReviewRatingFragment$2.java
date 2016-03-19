package com.grubhub.AppBaseLibrary.android.review;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;

class GHSReviewRatingFragment$2
  implements View.OnClickListener
{
  GHSReviewRatingFragment$2(GHSReviewRatingFragment paramGHSReviewRatingFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSReviewRatingFragment.b(a) != null)
    {
      paramView = GHSReviewRatingFragment.c(a).getValue();
      GHSReviewRatingFragment.b(a).a(paramView, GHSReviewRatingFragment.d(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewRatingFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */