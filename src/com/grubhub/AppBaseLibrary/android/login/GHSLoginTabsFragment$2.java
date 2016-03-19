package com.grubhub.AppBaseLibrary.android.login;

import android.app.ActionBar;
import android.app.Activity;
import android.support.v4.app.q;
import android.support.v4.view.dh;

class GHSLoginTabsFragment$2
  extends dh
{
  GHSLoginTabsFragment$2(GHSLoginTabsFragment paramGHSLoginTabsFragment) {}
  
  public void a(int paramInt)
  {
    q localq = a.getActivity();
    ActionBar localActionBar = localq.getActionBar();
    if ((localq != null) && (localActionBar != null) && (localActionBar.getNavigationMode() == 2)) {
      localActionBar.setSelectedNavigationItem(paramInt);
    }
    GHSLoginTabsFragment.a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginTabsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */