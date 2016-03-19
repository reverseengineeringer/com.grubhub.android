package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSWelcomeScreenAddressBar$2
  implements AdapterView.OnItemClickListener
{
  GHSWelcomeScreenAddressBar$2(GHSWelcomeScreenAddressBar paramGHSWelcomeScreenAddressBar) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (a.h != null) {
      a.h.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
    }
    h.a().a(new c("enter address", "select autocompleted address", ""));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSWelcomeScreenAddressBar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */