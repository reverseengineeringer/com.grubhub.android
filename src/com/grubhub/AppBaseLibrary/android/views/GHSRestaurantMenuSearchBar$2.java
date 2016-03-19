package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;

class GHSRestaurantMenuSearchBar$2
  implements AdapterView.OnItemClickListener
{
  GHSRestaurantMenuSearchBar$2(GHSRestaurantMenuSearchBar paramGHSRestaurantMenuSearchBar) {}
  
  public void onItemClick(final AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    GHSRestaurantMenuSearchBar.a(a).clearFocus();
    paramLong = 0L;
    if (GHSRestaurantMenuSearchBar.b(a))
    {
      paramLong = 350L;
      GHSRestaurantMenuSearchBar.c(a);
    }
    paramAdapterView = (String)paramView.getTag();
    a.postDelayed(new Runnable()
    {
      public void run()
      {
        if (GHSRestaurantMenuSearchBar.d(a) != null) {
          GHSRestaurantMenuSearchBar.d(a).b(paramAdapterView);
        }
      }
    }, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */