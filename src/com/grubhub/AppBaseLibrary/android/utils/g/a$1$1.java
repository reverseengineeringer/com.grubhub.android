package com.grubhub.AppBaseLibrary.android.utils.g;

import com.braintreepayments.api.h;
import com.braintreepayments.api.models.PaymentMethod;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;

class a$1$1
  implements h
{
  a$1$1(a.1 param1) {}
  
  public void a(PaymentMethod paramPaymentMethod)
  {
    if ((paramPaymentMethod != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramPaymentMethod.d()))) {
      a.b.a(a.a.getPaymentId(), paramPaymentMethod.d(), false);
    }
    do
    {
      return;
      com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve Android Pay payment nonce.", "Client token: " + a.a.getToken());
    } while (a.b.c == null);
    a.b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.a.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */