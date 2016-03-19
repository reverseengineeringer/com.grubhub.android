package com.grubhub.AppBaseLibrary.android.utils.g;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSITokenizeCreditCardDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class b$1
  implements e<GHSITokenizeCreditCardDataModel>
{
  b$1(b paramb, GHSIPaymentTokenModel paramGHSIPaymentTokenModel) {}
  
  public void a(GHSITokenizeCreditCardDataModel paramGHSITokenizeCreditCardDataModel)
  {
    b.a(a.getPaymentId(), paramGHSITokenizeCreditCardDataModel.getNonce(), b.a(b));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */