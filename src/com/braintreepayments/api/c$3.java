package com.braintreepayments.api;

import android.os.Handler;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class c$3
  implements g
{
  c$3(c paramc, List paramList) {}
  
  public void a()
  {
    Iterator localIterator = c.d(b).iterator();
    while (localIterator.hasNext())
    {
      final j localj = (j)localIterator.next();
      c.e(b).post(new Runnable()
      {
        public void run()
        {
          localj.a(a);
        }
      });
    }
  }
  
  public boolean b()
  {
    return !c.d(b).isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */