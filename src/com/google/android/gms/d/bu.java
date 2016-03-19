package com.google.android.gms.d;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

class bu
  implements ThreadFactory
{
  private static final AtomicInteger a = new AtomicInteger();
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new bv(paramRunnable, "measurement-" + a.incrementAndGet());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */