package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.view.View.OnLongClickListener;

class j$1
  implements View.OnLongClickListener
{
  j$1(j paramj) {}
  
  public boolean onLongClick(View paramView)
  {
    if (GHSSavedAddressListFragment.m(a.a)) {
      return false;
    }
    paramView.setTranslationX(GHSSavedAddressListFragment.c(a.a));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */