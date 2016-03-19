package com.grubhub.AppBaseLibrary.android.login;

import android.app.Activity;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSCreateAccountFragment$3
  implements d
{
  GHSCreateAccountFragment$3(GHSCreateAccountFragment paramGHSCreateAccountFragment) {}
  
  public void a(b paramb)
  {
    q localq = a.getActivity();
    if (localq != null) {
      c.a(localq, paramb.f(), paramb.getLocalizedMessage(), localq.getString(2131231717), null, null, null);
    }
    GHSCreateAccountFragment.a(a, true);
    ((GHSBaseActivity)a.getActivity()).a(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSCreateAccountFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */