package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class GHSSearchFragment$2
  extends BroadcastReceiver
{
  GHSSearchFragment$2(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("com.grubhub.AppBaseLibrary.android.utils.BROADCAST".equals(paramIntent.getAction())) && (GHSSearchFragment.d(a)))
    {
      GHSSearchFragment.c(a, false);
      GHSSearchFragment.a(a, GHSSearchFragment.e(a), true);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */