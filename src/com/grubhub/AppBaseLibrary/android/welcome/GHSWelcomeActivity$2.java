package com.grubhub.AppBaseLibrary.android.welcome;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.a;
import com.grubhub.AppBaseLibrary.android.order.g;

class GHSWelcomeActivity$2
  implements e<GHSIAddressDataModel>
{
  GHSWelcomeActivity$2(GHSWelcomeActivity paramGHSWelcomeActivity1, g paramg, GHSWelcomeActivity paramGHSWelcomeActivity2) {}
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (paramGHSIAddressDataModel != null)
    {
      c.a(paramGHSIAddressDataModel, a.b(paramGHSIAddressDataModel), a);
      return;
    }
    GHSWelcomeActivity.a(c, b);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */