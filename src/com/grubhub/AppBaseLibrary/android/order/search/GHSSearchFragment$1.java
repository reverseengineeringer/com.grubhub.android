package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.grubhub.AppBaseLibrary.android.review.a;
import com.grubhub.AppBaseLibrary.android.views.GHSAddressBar;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;

class GHSSearchFragment$1
  extends BroadcastReceiver
{
  GHSSearchFragment$1(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals(paramContext.getString(2131230829)))
    {
      GHSSearchFragment.a(a, false);
      if (GHSSearchFragment.a(a) != null) {
        GHSSearchFragment.a(a).a(null, true);
      }
      if (GHSSearchFragment.b(a) != null)
      {
        GHSSearchFragment.b(a).f();
        GHSSearchFragment.b(a).setPastOrders(null);
      }
      if (GHSSearchFragment.c(a) != null)
      {
        GHSSearchFragment.c(a).c(false);
        GHSSearchFragment.b(a, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */