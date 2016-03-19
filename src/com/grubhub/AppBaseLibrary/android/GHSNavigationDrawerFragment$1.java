package com.grubhub.AppBaseLibrary.android;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.login.a;

class GHSNavigationDrawerFragment$1
  implements View.OnClickListener
{
  GHSNavigationDrawerFragment$1(GHSNavigationDrawerFragment paramGHSNavigationDrawerFragment) {}
  
  public void onClick(View paramView)
  {
    a.b();
    GHSNavigationDrawerFragment.a(a).startActivityForResult(GHSLoginActivity.a(GHSNavigationDrawerFragment.a(a), a.LOGIN), 2);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSNavigationDrawerFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */