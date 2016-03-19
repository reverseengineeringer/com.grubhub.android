package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSSearchFragment$22
  implements d
{
  GHSSearchFragment$22(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void a(b paramb)
  {
    if (GHSSearchFragment.s(a) != null)
    {
      paramb = GHSSearchFragment.s(a).getContext();
      if (paramb != null)
      {
        ((TextView)GHSSearchFragment.w(a).findViewById(2131690333)).setText(paramb.getString(2131231608));
        GHSSearchFragment.s(a).a(GHSSearchFragment.w(a), null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */