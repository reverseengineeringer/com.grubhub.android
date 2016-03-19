package com.grubhub.AppBaseLibrary.android.login;

import com.grubhub.AppBaseLibrary.android.dataServices.a.h.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.d;
import java.util.ArrayList;

class GHSLoginFragment$3$5
  implements e<GHSIPastOrderListDataModel>
{
  GHSLoginFragment$3$5(GHSLoginFragment.3 param3) {}
  
  public void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    paramGHSIPastOrderListDataModel = d.a(paramGHSIPastOrderListDataModel.getPastOrders(), null);
    if ((paramGHSIPastOrderListDataModel != null) && (!paramGHSIPastOrderListDataModel.isEmpty()))
    {
      GHSLoginFragment.a(a.c, new b(a.b, paramGHSIPastOrderListDataModel, true, null, new i()
      {
        public void a()
        {
          GHSLoginFragment.h(a.c)[4] = 1;
          GHSLoginFragment.a(a.c, null);
          GHSLoginFragment.i(a.c);
        }
      }));
      GHSLoginFragment.m(a.c).a();
      return;
    }
    GHSLoginFragment.h(a.c)[4] = 1;
    GHSLoginFragment.i(a.c);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.3.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */