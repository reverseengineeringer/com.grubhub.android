package com.grubhub.AppBaseLibrary.android.account;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSChangeEmailInfoFragment$5
  implements e<GHSIUserAuthDataModel>
{
  GHSChangeEmailInfoFragment$5(GHSChangeEmailInfoFragment paramGHSChangeEmailInfoFragment) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramGHSIUserAuthDataModel.getToken())))
    {
      GHSChangeEmailInfoFragment.a(a, "successful");
      GHSChangeEmailInfoFragment.c(a).j();
      return;
    }
    GHSChangeEmailInfoFragment.a(a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangeEmailInfoFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */