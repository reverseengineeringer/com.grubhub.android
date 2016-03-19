package com.grubhub.AppBaseLibrary.android.views;

import android.app.Dialog;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;

class GHSAddressBar$6
  implements View.OnClickListener
{
  GHSAddressBar$6(GHSAddressBar paramGHSAddressBar) {}
  
  public void onClick(View paramView)
  {
    GHSAddressBar.e(a).dismiss();
    GHSAddressBar.g(a);
    a.b.requestFocus();
    GHSAddressBar.k(a).postDelayed(new Runnable()
    {
      public void run()
      {
        GHSAddressBar.j(a);
      }
    }, 250L);
    if (GHSAddressBar.c(a) != null) {
      GHSAddressBar.c(a).d();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */