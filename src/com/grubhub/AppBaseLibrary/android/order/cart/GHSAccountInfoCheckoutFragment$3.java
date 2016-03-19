package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;

class GHSAccountInfoCheckoutFragment$3
  implements e<GHSIUserAuthDataModel>
{
  GHSAccountInfoCheckoutFragment$3(GHSAccountInfoCheckoutFragment paramGHSAccountInfoCheckoutFragment, String paramString) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (f.b(paramGHSIUserAuthDataModel.getToken())))
    {
      GHSApplication.a().b().h(a);
      GHSAccountInfoCheckoutFragment.a(b, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSAccountInfoCheckoutFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */