package com.grubhub.AppBaseLibrary.android.login;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ac;
import android.support.v4.app.w;

class GHSLoginTabsFragment$1
  extends ac
{
  GHSLoginTabsFragment$1(GHSLoginTabsFragment paramGHSLoginTabsFragment, w paramw)
  {
    super(paramw);
  }
  
  public Fragment a(int paramInt)
  {
    if (paramInt == 0)
    {
      GHSCreateAccountFragment localGHSCreateAccountFragment = GHSCreateAccountFragment.b();
      GHSLoginTabsFragment.a(a, (c)localGHSCreateAccountFragment);
      return localGHSCreateAccountFragment;
    }
    return GHSLoginFragment.a(a.getArguments().getBoolean("prefill_login_email", false));
  }
  
  public int b()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginTabsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */