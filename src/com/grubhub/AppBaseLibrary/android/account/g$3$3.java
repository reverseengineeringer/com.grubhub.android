package com.grubhub.AppBaseLibrary.android.account;

import android.widget.Toast;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class g$3$3
  implements e<ArrayList<GHSIAddressDataModel>>
{
  g$3$3(g.3 param3, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    GHSSavedAddressListFragment.f(b.a.a).a(GHSApplication.a().b().R());
    GHSSavedAddressListFragment.a(b.a.a, "successful");
    Toast.makeText(b.a.a.getActivity(), b.a.a.getString(2131231036), 0).show();
    paramArrayList = b.a.a;
    if (GHSSavedAddressListFragment.f(b.a.a).getCount() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      GHSSavedAddressListFragment.e(paramArrayList, bool);
      paramArrayList = GHSApplication.a().b().t();
      if ((paramArrayList != null) && (a != null) && (paramArrayList.getId() != null) && (paramArrayList.getId().equals(a.getId())))
      {
        paramArrayList.setIsSavedAddress(false);
        GHSApplication.a().b().a(paramArrayList);
      }
      paramArrayList = GHSApplication.a().b();
      GHSFilterSortCriteria localGHSFilterSortCriteria = paramArrayList.z();
      String str = localGHSFilterSortCriteria.getSavedAddressId();
      if ((str != null) && (str.equals(a.getId())))
      {
        localGHSFilterSortCriteria.setAddressToNotSaved();
        paramArrayList.a(localGHSFilterSortCriteria);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.g.3.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */