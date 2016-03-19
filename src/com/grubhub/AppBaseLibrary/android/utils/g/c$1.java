package com.grubhub.AppBaseLibrary.android.utils.g;

import com.braintreepayments.api.d;
import com.braintreepayments.api.e;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.h;
import com.braintreepayments.api.models.PaymentMethod;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;

class c$1
  implements d
{
  c$1(c paramc, GHSIPaymentTokenModel paramGHSIPaymentTokenModel) {}
  
  public void a(boolean paramBoolean, com.braintreepayments.api.c paramc, String paramString, Exception paramException)
  {
    if (paramBoolean)
    {
      c.a(b, paramc);
      c.a(b).a(new h()
      {
        public void a(PaymentMethod paramAnonymousPaymentMethod)
        {
          if ((paramAnonymousPaymentMethod != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramAnonymousPaymentMethod.d()))) {
            b.a(a.getPaymentId(), paramAnonymousPaymentMethod.d(), false);
          }
          do
          {
            return;
            com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "Client token: " + a.getToken());
          } while (b.c == null);
          b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
        }
      });
      c.a(b).a(new e()
      {
        public void a(ErrorWithResponse paramAnonymousErrorWithResponse)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree Error: " + paramAnonymousErrorWithResponse.getMessage());
          if (b.c != null) {
            b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
          }
        }
        
        public void a(Throwable paramAnonymousThrowable)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree Error: " + paramAnonymousThrowable.getMessage());
          if (b.c != null) {
            b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
          }
        }
      });
      c.a(b).a(b.b, 53655);
    }
    do
    {
      return;
      com.grubhub.AppBaseLibrary.android.utils.e.a.b("BrainTree setup failed.", "Error Msg: " + paramString);
    } while (b.c == null);
    b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */