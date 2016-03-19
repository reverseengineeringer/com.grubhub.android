package com.grubhub.AppBaseLibrary.android.order;

import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSOrderStatusFragment$8
  implements i
{
  GHSOrderStatusFragment$8(GHSOrderStatusFragment paramGHSOrderStatusFragment, boolean paramBoolean) {}
  
  public void a()
  {
    if (a)
    {
      GHSOrderStatusFragment.a(b).setRefreshing(true);
      return;
    }
    GHSOrderStatusFragment.b(b).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */