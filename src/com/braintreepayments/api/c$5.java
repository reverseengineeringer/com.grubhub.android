package com.braintreepayments.api;

import android.os.Handler;
import java.util.Iterator;
import java.util.Set;

class c$5
  implements g
{
  c$5(c paramc, String paramString) {}
  
  public void a()
  {
    Iterator localIterator = c.g(b).iterator();
    while (localIterator.hasNext())
    {
      final i locali = (i)localIterator.next();
      c.e(b).post(new Runnable()
      {
        public void run()
        {
          locali.a(a);
        }
      });
    }
  }
  
  public boolean b()
  {
    return !c.g(b).isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */