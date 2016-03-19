package com.grubhub.AppBaseLibrary.android.login;

import android.support.v4.app.q;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;

class GHSCreateAccountFragment$2
  implements e<GHSIUserAuthDataModel>
{
  GHSCreateAccountFragment$2(GHSCreateAccountFragment paramGHSCreateAccountFragment, String paramString) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramGHSIUserAuthDataModel.getToken())))
    {
      GHSCreateAccountFragment.a(b, true);
      if (GHSCreateAccountFragment.f(b) != null) {
        GHSCreateAccountFragment.f(b).d(f.b(a));
      }
    }
    q localq;
    do
    {
      return;
      paramGHSIUserAuthDataModel = new com.grubhub.AppBaseLibrary.android.b.b(a.ERROR_CODE_UNKNOWN);
      localq = b.getActivity();
    } while (localq == null);
    c.a(localq, paramGHSIUserAuthDataModel.f(), paramGHSIUserAuthDataModel.getLocalizedMessage(), paramGHSIUserAuthDataModel.g(), paramGHSIUserAuthDataModel.h(), paramGHSIUserAuthDataModel.i(), null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSCreateAccountFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */