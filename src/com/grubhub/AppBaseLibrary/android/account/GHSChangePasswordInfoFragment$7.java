package com.grubhub.AppBaseLibrary.android.account;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSChangePasswordInfoFragment$7
  implements e<GHSIUserAuthDataModel>
{
  GHSChangePasswordInfoFragment$7(GHSChangePasswordInfoFragment paramGHSChangePasswordInfoFragment) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramGHSIUserAuthDataModel.getToken())))
    {
      GHSChangePasswordInfoFragment.a(a, "successful");
      GHSChangePasswordInfoFragment.f(a).k();
      return;
    }
    GHSChangePasswordInfoFragment.a(a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangePasswordInfoFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */