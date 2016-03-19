package com.braintreepayments.api;

import android.os.Handler;
import com.braintreepayments.api.models.PaymentMethod;
import java.util.Iterator;
import java.util.Set;

class c$4
  implements g
{
  c$4(c paramc, PaymentMethod paramPaymentMethod) {}
  
  public void a()
  {
    Iterator localIterator = c.f(b).iterator();
    while (localIterator.hasNext())
    {
      final h localh = (h)localIterator.next();
      c.e(b).post(new Runnable()
      {
        public void run()
        {
          localh.a(a);
        }
      });
    }
  }
  
  public boolean b()
  {
    return !c.f(b).isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */