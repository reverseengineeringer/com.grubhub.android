package com.grubhub.AppBaseLibrary.android;

import com.grubhub.AppBaseLibrary.android.dataServices.a.h.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.d;
import java.util.ArrayList;

class GHSSplashActivity$2
  implements e<GHSIPastOrderListDataModel>
{
  GHSSplashActivity$2(GHSSplashActivity paramGHSSplashActivity) {}
  
  public void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    paramGHSIPastOrderListDataModel = d.a(paramGHSIPastOrderListDataModel.getPastOrders(), null);
    if ((paramGHSIPastOrderListDataModel != null) && (!paramGHSIPastOrderListDataModel.isEmpty()))
    {
      GHSSplashActivity.a(a, new b(a, paramGHSIPastOrderListDataModel, true, null, new i()
      {
        public void a()
        {
          GHSSplashActivity.e(a, true);
          GHSSplashActivity.a(a, null);
          GHSSplashActivity.d(a);
        }
      }));
      GHSSplashActivity.f(a).a();
      return;
    }
    GHSSplashActivity.e(a, true);
    GHSSplashActivity.d(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSSplashActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */