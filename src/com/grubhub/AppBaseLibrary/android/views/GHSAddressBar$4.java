package com.grubhub.AppBaseLibrary.android.views;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class GHSAddressBar$4
  implements View.OnClickListener
{
  GHSAddressBar$4(GHSAddressBar paramGHSAddressBar) {}
  
  public void onClick(View paramView)
  {
    GHSAddressBar.h(a).dismiss();
    paramView = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
    a.getContext().startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */