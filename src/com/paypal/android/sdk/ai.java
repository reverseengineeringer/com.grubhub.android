package com.paypal.android.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ai
{
  private static final String a = ai.class.getSimpleName();
  private final List b = new ArrayList();
  
  public final void a()
  {
    synchronized (b)
    {
      Iterator localIterator = b.iterator();
      if (localIterator.hasNext())
      {
        aj localaj = (aj)localIterator.next();
        b.remove(localaj);
      }
    }
  }
  
  public final void a(ak paramak)
  {
    synchronized (b)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        if (nexta == paramak)
        {
          new StringBuilder("Ignoring attempt to re-register listener ").append(paramak);
          return;
        }
      }
      b.add(new aj(this, paramak));
      return;
    }
  }
  
  public final void a(dz paramdz, long paramLong)
  {
    new StringBuilder("dispatching ").append(paramdz.o());
    if (paramdz.p() < 0L) {
      new StringBuilder("discarding ").append(paramdz.o());
    }
    for (;;)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      synchronized (b)
      {
        Iterator localIterator = b.iterator();
        if (localIterator.hasNext()) {
          localArrayList.add(0, (aj)localIterator.next());
        }
      }
      ??? = localArrayList.iterator();
      while (((Iterator)???).hasNext()) {
        nexta.a(paramdz);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */