package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.q;
import android.view.View;
import android.view.View.OnClickListener;

class GHSRestaurantFragment$18
  implements View.OnClickListener
{
  GHSRestaurantFragment$18(GHSRestaurantFragment paramGHSRestaurantFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSRestaurantFragment.f(a) != null)
    {
      paramView = new Intent("android.intent.action.DIAL");
      paramView.setData(Uri.parse("tel:" + GHSRestaurantFragment.f(a)));
      a.getActivity().startActivity(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */