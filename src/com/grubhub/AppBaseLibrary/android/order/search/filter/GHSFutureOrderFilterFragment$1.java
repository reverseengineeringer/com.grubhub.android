package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.view.View;
import android.view.View.OnClickListener;

class GHSFutureOrderFilterFragment$1
  implements View.OnClickListener
{
  GHSFutureOrderFilterFragment$1(GHSFutureOrderFilterFragment paramGHSFutureOrderFilterFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSFutureOrderFilterFragment.a(a))
    {
      GHSFutureOrderFilterFragment.b(a);
      return;
    }
    if (GHSFutureOrderFilterFragment.c(a) != 0L)
    {
      GHSFutureOrderFilterFragment.a(a, true);
      GHSFutureOrderFilterFragment.d(a);
      return;
    }
    GHSFutureOrderFilterFragment.b(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderFilterFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */