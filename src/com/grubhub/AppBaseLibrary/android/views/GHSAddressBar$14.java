package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.order.g;

class GHSAddressBar$14
  implements View.OnClickListener
{
  GHSAddressBar$14(GHSAddressBar paramGHSAddressBar) {}
  
  public void onClick(View paramView)
  {
    if ((paramView.getTag() instanceof g)) {
      GHSAddressBar.a(a, (g)paramView.getTag());
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */