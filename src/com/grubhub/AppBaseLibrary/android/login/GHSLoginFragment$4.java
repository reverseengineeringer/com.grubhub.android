package com.grubhub.AppBaseLibrary.android.login;

import android.app.Activity;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSLoginFragment$4
  implements d
{
  GHSLoginFragment$4(GHSLoginFragment paramGHSLoginFragment) {}
  
  public void a(b paramb)
  {
    q localq = a.getActivity();
    if (localq != null)
    {
      if (!paramb.d()) {
        break label55;
      }
      c.a(a.getActivity(), paramb.f(), paramb.getLocalizedMessage(), localq.getString(2131231717), null, null, null);
    }
    for (;;)
    {
      GHSLoginFragment.a(a, true);
      return;
      label55:
      c.a(a.getActivity(), paramb.f(), paramb.getLocalizedMessage(), localq.getString(2131231717), null, null, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */