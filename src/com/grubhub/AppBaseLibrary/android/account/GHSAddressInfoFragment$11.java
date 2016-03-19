package com.grubhub.AppBaseLibrary.android.account;

import android.app.Activity;
import android.support.v4.app.q;
import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class GHSAddressInfoFragment$11
  implements e<ArrayList<GHSIAddressDataModel>>
{
  GHSAddressInfoFragment$11(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    q localq = a.getActivity();
    GHSIAddressDataModel localGHSIAddressDataModel;
    if (localq != null)
    {
      if (paramArrayList == null) {
        break label221;
      }
      GHSAddressInfoFragment.m(a);
      localGHSIAddressDataModel = null;
      if (paramArrayList.size() > 0) {
        localGHSIAddressDataModel = (GHSIAddressDataModel)paramArrayList.get(0);
      }
      if (localGHSIAddressDataModel == null) {
        break label197;
      }
      if ((GHSAddressInfoFragment.o(a)) || (GHSAddressInfoFragment.l(a) == a.ENTER) || (GHSAddressInfoFragment.l(a) == a.VERIFY)) {
        GHSApplication.a().b().a(localGHSIAddressDataModel);
      }
      if (GHSAddressInfoFragment.l(a) != a.VERIFY) {
        GHSAddressInfoFragment.a(a, "successful");
      }
      if (GHSAddressInfoFragment.p(a) != null)
      {
        if (GHSAddressInfoFragment.l(a) != a.VERIFY) {
          break label178;
        }
        GHSAddressInfoFragment.p(a).a(GHSAddressInfoFragment.q(a).getText().toString(), GHSAddressInfoFragment.r(a).getText().toString(), localGHSIAddressDataModel);
      }
    }
    return;
    label178:
    GHSAddressInfoFragment.p(a).d(localGHSIAddressDataModel.getId());
    return;
    label197:
    a.a(localq.getString(2131231592), true);
    GHSAddressInfoFragment.a(a, "error");
    return;
    label221:
    a.a(localq.getString(2131231489), true);
    GHSAddressInfoFragment.a(a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */