package com.grubhub.AppBaseLibrary.android;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.p;
import android.support.v7.app.n;
import android.view.View;

class GHSNavigationDrawerFragment$6
  extends n
{
  GHSNavigationDrawerFragment$6(GHSNavigationDrawerFragment paramGHSNavigationDrawerFragment, Activity paramActivity, DrawerLayout paramDrawerLayout, int paramInt1, int paramInt2)
  {
    super(paramActivity, paramDrawerLayout, paramInt1, paramInt2);
  }
  
  public void onDrawerClosed(View paramView)
  {
    super.onDrawerClosed(paramView);
    if (!a.isAdded()) {}
    do
    {
      return;
      GHSNavigationDrawerFragment.a(a).invalidateOptionsMenu();
    } while (GHSNavigationDrawerFragment.d(a) == null);
    GHSNavigationDrawerFragment.d(a).onDrawerClosed(paramView);
  }
  
  public void onDrawerOpened(View paramView)
  {
    super.onDrawerOpened(paramView);
    if (!a.isAdded()) {}
    do
    {
      return;
      if (!GHSNavigationDrawerFragment.c(a))
      {
        GHSNavigationDrawerFragment.a(a, true);
        PreferenceManager.getDefaultSharedPreferences(GHSNavigationDrawerFragment.a(a)).edit().putBoolean("navigation_drawer_learned", true).apply();
      }
      GHSNavigationDrawerFragment.a(a).invalidateOptionsMenu();
    } while (GHSNavigationDrawerFragment.d(a) == null);
    GHSNavigationDrawerFragment.d(a).onDrawerOpened(paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSNavigationDrawerFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */