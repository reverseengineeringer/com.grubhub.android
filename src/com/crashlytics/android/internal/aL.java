package com.crashlytics.android.internal;

import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

final class al
  implements ThreadFactory
{
  al(String paramString, AtomicLong paramAtomicLong) {}
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = Executors.defaultThreadFactory().newThread(new am(this, paramRunnable));
    paramRunnable.setName(String.format(Locale.US, a, new Object[] { Long.valueOf(b.getAndIncrement()) }));
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */