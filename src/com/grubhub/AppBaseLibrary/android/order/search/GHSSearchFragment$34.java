package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.grubhub.AppBaseLibrary.android.views.GHSAddressBar;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;

class GHSSearchFragment$34
  implements AdapterView.OnItemClickListener
{
  GHSSearchFragment$34(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, final View paramView, final int paramInt, long paramLong)
  {
    GHSSearchFragment.a(a).clearFocus();
    GHSSearchFragment.b(a).clearFocus();
    paramLong = 0L;
    if (GHSSearchFragment.n(a))
    {
      ((InputMethodManager)paramAdapterView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramAdapterView.getWindowToken(), 2);
      paramLong = 350L;
    }
    GHSSearchFragment.o(a).postDelayed(new Runnable()
    {
      public void run()
      {
        GHSSearchFragment.a(a, paramView, paramInt);
      }
    }, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */