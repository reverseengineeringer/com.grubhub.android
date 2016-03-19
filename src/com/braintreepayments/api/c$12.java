package com.braintreepayments.api;

import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.exceptions.d;
import com.braintreepayments.api.models.PaymentMethod;
import com.braintreepayments.api.models.l;

class c$12
  implements Runnable
{
  c$12(c paramc, l paraml) {}
  
  public void run()
  {
    try
    {
      PaymentMethod localPaymentMethod = c.c(b).a(a);
      c.a(b, localPaymentMethod);
      c.b(b, localPaymentMethod);
      c.a(b, localPaymentMethod.d());
      return;
    }
    catch (d locald)
    {
      b.a(locald);
      return;
    }
    catch (ErrorWithResponse localErrorWithResponse)
    {
      c.a(b, localErrorWithResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */