package com.facebook;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class m$1
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(0);
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "FacebookSdk #" + a.incrementAndGet());
  }
}

/* Location:
 * Qualified Name:     com.facebook.m.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */