package com.grubhub.AppBaseLibrary.android.account;

import android.text.TextUtils;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSAccountSettingsActivity$2
  implements e<GHSIUserAuthDataModel>
{
  GHSAccountSettingsActivity$2(GHSAccountSettingsActivity paramGHSAccountSettingsActivity) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramGHSIUserAuthDataModel.getToken())))
    {
      GHSAccountSettingsActivity.a(a, "successful");
      GHSAccountSettingsActivity.b(a).setText(GHSAccountSettingsActivity.a(a, paramGHSIUserAuthDataModel.getFirstName(), paramGHSIUserAuthDataModel.getLastName()));
      a.b(GHSYourInfoFragment.class.getSimpleName());
      return;
    }
    GHSAccountSettingsActivity.a(a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAccountSettingsActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */