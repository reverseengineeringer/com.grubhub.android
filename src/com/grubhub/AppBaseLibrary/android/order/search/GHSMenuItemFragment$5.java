package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSMenuItemFragment$5
  implements d
{
  GHSMenuItemFragment$5(GHSMenuItemFragment paramGHSMenuItemFragment, com.grubhub.AppBaseLibrary.android.dataServices.a.b paramb) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    GHSMenuItemFragment.q(b).a(paramb.getMessage(), new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */