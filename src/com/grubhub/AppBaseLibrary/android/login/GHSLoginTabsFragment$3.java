package com.grubhub.AppBaseLibrary.android.login;

import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.FragmentTransaction;
import android.support.v4.view.ViewPager;

class GHSLoginTabsFragment$3
  implements ActionBar.TabListener
{
  GHSLoginTabsFragment$3(GHSLoginTabsFragment paramGHSLoginTabsFragment) {}
  
  public void onTabReselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction) {}
  
  public void onTabSelected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    if ((GHSLoginTabsFragment.a(a)) && (GHSLoginTabsFragment.b(a) != null))
    {
      GHSLoginTabsFragment.b(a).setCurrentItem(paramTab.getPosition());
      if ((paramTab.getPosition() == 0) && (GHSLoginTabsFragment.c(a) != null)) {
        GHSLoginTabsFragment.c(a).c();
      }
    }
  }
  
  public void onTabUnselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginTabsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */