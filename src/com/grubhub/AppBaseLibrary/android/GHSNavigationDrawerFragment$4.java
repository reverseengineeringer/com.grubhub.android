package com.grubhub.AppBaseLibrary.android;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class GHSNavigationDrawerFragment$4
  implements View.OnClickListener
{
  GHSNavigationDrawerFragment$4(GHSNavigationDrawerFragment paramGHSNavigationDrawerFragment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(new Intent(GHSNavigationDrawerFragment.a(a), GHSPreferences.class));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSNavigationDrawerFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */