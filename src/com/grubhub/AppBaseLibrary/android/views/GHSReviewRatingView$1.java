package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.View.OnClickListener;

class GHSReviewRatingView$1
  implements View.OnClickListener
{
  GHSReviewRatingView$1(GHSReviewRatingView paramGHSReviewRatingView) {}
  
  public void onClick(View paramView)
  {
    if (GHSReviewRatingView.a(a) != null)
    {
      paramView = (Integer)paramView.getTag(2131689479);
      a.setSelectedRating(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSReviewRatingView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */