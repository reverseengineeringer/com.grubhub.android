package com.grubhub.AppBaseLibrary.android.welcome;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.a;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;

class GHSWelcomeActivity$6
  implements e<ArrayList<GHSIAddressDataModel>>
{
  GHSWelcomeActivity$6(GHSWelcomeActivity paramGHSWelcomeActivity1, g paramg, GHSWelcomeActivity paramGHSWelcomeActivity2) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      c.a((GHSIAddressDataModel)paramArrayList.get(0), a.b((GHSIAddressDataModel)paramArrayList.get(0)), a);
      return;
    }
    GHSWelcomeActivity.a(c, b);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */