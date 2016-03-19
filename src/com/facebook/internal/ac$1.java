package com.facebook.internal;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

final class ac$1
  implements Runnable
{
  public void run()
  {
    try
    {
      Iterator localIterator = ac.c().iterator();
      while (localIterator.hasNext()) {
        af.a((af)localIterator.next(), true);
      }
    }
    finally
    {
      ac.d().set(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ac.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */