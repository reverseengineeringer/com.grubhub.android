package com.facebook.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;

class aa$1
  implements Callable<Void>
{
  aa$1(aa paramaa, Callable paramCallable) {}
  
  public Void a()
    throws Exception
  {
    try
    {
      aa.a(b, a.call());
      return null;
    }
    finally
    {
      aa.a(b).countDown();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.aa.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */