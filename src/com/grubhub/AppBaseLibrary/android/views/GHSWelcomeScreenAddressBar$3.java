package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSWelcomeScreenAddressBar$3
  implements View.OnClickListener
{
  GHSWelcomeScreenAddressBar$3(GHSWelcomeScreenAddressBar paramGHSWelcomeScreenAddressBar) {}
  
  public void onClick(View paramView)
  {
    if (a.g != null) {
      a.g.onClick(paramView);
    }
    h.a().a(new c("enter address", "geolocate current location", ""));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSWelcomeScreenAddressBar.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */