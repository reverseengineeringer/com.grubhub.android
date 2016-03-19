package com.grubhub.AppBaseLibrary.android.account;

import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

class GHSAccountSettingsActivity$1
  implements View.OnClickListener
{
  GHSAccountSettingsActivity$1(GHSAccountSettingsActivity paramGHSAccountSettingsActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = GHSApplication.d(a);
    GHSAccountSettingsActivity.a(a).a().a(GHSYourInfoFragment.class.getSimpleName()).a(2130968609, 2130968616, 2130968609, 2130968616).b(2131689598, GHSYourInfoFragment.a(r.SETTINGS, null, paramView.getFirstName(), paramView.getLastName(), GHSApplication.a().b().B()), GHSYourInfoFragment.class.getSimpleName()).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAccountSettingsActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */