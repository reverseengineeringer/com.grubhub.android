package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.view.View.OnClickListener;

class h
  implements View.OnClickListener
{
  private int b;
  
  public h(GHSSavedAddressListFragment paramGHSSavedAddressListFragment, int paramInt)
  {
    b = paramInt;
  }
  
  public void onClick(View paramView)
  {
    paramView = GHSSavedAddressListFragment.f(a).a(b);
    if (GHSSavedAddressListFragment.e(a) != null) {
      GHSSavedAddressListFragment.e(a).a(paramView, GHSSavedAddressListFragment.i(a), false, GHSSavedAddressListFragment.j(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */