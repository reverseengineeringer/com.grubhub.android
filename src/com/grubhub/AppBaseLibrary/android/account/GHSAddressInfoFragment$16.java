package com.grubhub.AppBaseLibrary.android.account;

import android.app.Activity;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.a;
import java.util.ArrayList;

class GHSAddressInfoFragment$16
  implements e<ArrayList<GHSIAddressDataModel>>
{
  GHSAddressInfoFragment$16(GHSAddressInfoFragment paramGHSAddressInfoFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    Object localObject1 = GHSApplication.a().b();
    Object localObject2 = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).z();
    if (localObject2 != null)
    {
      String str = ((GHSFilterSortCriteria)localObject2).getSavedAddressId();
      if ((str != null) && (str.equals(GHSAddressInfoFragment.s(b).getId())))
      {
        ((GHSFilterSortCriteria)localObject2).setAddress(a, a.b(a));
        ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).a((GHSFilterSortCriteria)localObject2);
      }
    }
    localObject2 = b.getActivity();
    if (localObject2 != null)
    {
      if (paramArrayList == null) {
        break label207;
      }
      GHSAddressInfoFragment.m(b);
      localObject1 = null;
      if (paramArrayList.size() > 0) {
        localObject1 = (GHSIAddressDataModel)paramArrayList.get(0);
      }
      if (localObject1 == null) {
        break label183;
      }
      if ((paramArrayList.size() > 0) && (GHSAddressInfoFragment.o(b))) {
        GHSApplication.a().b().a((GHSIAddressDataModel)localObject1);
      }
      GHSAddressInfoFragment.a(b, "successful");
      if (GHSAddressInfoFragment.p(b) != null) {
        GHSAddressInfoFragment.p(b).d(((GHSIAddressDataModel)localObject1).getId());
      }
    }
    return;
    label183:
    b.a(((Activity)localObject2).getString(2131231592), true);
    GHSAddressInfoFragment.a(b, "error");
    return;
    label207:
    b.a(((Activity)localObject2).getString(2131231489), true);
    GHSAddressInfoFragment.a(b, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */