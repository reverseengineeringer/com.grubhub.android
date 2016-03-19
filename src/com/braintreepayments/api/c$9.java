package com.braintreepayments.api;

import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.exceptions.d;
import com.braintreepayments.api.models.PaymentMethod;
import org.json.JSONException;

class c$9
  implements Runnable
{
  c$9(c paramc, String paramString) {}
  
  public void run()
  {
    try
    {
      PaymentMethod localPaymentMethod = c.c(b).a(a);
      localPaymentMethod.f("venmo-app");
      c.a(b, localPaymentMethod);
      c.b(b, localPaymentMethod);
      c.a(b, a);
      b.a("venmo-app.success");
      return;
    }
    catch (d locald)
    {
      b.a(locald);
      return;
    }
    catch (JSONException localJSONException)
    {
      b.a(localJSONException);
      return;
    }
    catch (ErrorWithResponse localErrorWithResponse)
    {
      c.a(b, localErrorWithResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */