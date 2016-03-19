package com.grubhub.AppBaseLibrary.android.order.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ListAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSSearchFragment$13
  extends AnimatorListenerAdapter
{
  GHSSearchFragment$13(GHSSearchFragment paramGHSSearchFragment, int paramInt) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if ((GHSSearchFragment.g(b) != null) && (GHSSearchFragment.g(b).getAdapter() != null))
    {
      paramAnimator = (GHSIRestaurantDataModel)GHSSearchFragment.g(b).getAdapter().getItem(a);
      if ((paramAnimator == null) || (GHSSearchFragment.y(b) == null)) {}
    }
    try
    {
      if (GHSSearchFragment.e(b) != null) {
        GHSSearchFragment.y(b).a(paramAnimator.getRestaurantId(), false, false, null, GHSSearchFragment.e(b).getAddress(), GHSSearchFragment.e(b).getOrderType());
      }
      GHSSearchFragment.g(b, false);
      return;
    }
    catch (IllegalStateException paramAnimator)
    {
      GHSSearchFragment.g(b, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */