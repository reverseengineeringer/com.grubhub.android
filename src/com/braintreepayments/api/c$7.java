package com.braintreepayments.api;

import android.os.Handler;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import java.util.Iterator;
import java.util.Set;

class c$7
  implements g
{
  c$7(c paramc, ErrorWithResponse paramErrorWithResponse) {}
  
  public void a()
  {
    Iterator localIterator = c.h(b).iterator();
    while (localIterator.hasNext())
    {
      final e locale = (e)localIterator.next();
      c.e(b).post(new Runnable()
      {
        public void run()
        {
          locale.a(a);
        }
      });
    }
  }
  
  public boolean b()
  {
    return !c.h(b).isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */