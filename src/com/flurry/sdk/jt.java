package com.flurry.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class jt
{
  private static jt a;
  private final Thread.UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
  private final Map<Thread.UncaughtExceptionHandler, Void> c = new WeakHashMap();
  
  private jt()
  {
    Thread.setDefaultUncaughtExceptionHandler(new jt.a(this, null));
  }
  
  public static jt a()
  {
    try
    {
      if (a == null) {
        a = new jt();
      }
      jt localjt = a;
      return localjt;
    }
    finally {}
  }
  
  private void a(Thread paramThread, Throwable paramThrowable)
  {
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = (Thread.UncaughtExceptionHandler)localIterator.next();
      try
      {
        localUncaughtExceptionHandler.uncaughtException(paramThread, paramThrowable);
      }
      catch (Throwable localThrowable) {}
    }
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.d();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  private void b(Thread paramThread, Throwable paramThrowable)
  {
    if (b != null) {}
    try
    {
      b.uncaughtException(paramThread, paramThrowable);
      return;
    }
    catch (Throwable paramThread) {}
  }
  
  private Set<Thread.UncaughtExceptionHandler> c()
  {
    synchronized (c)
    {
      Set localSet = c.keySet();
      return localSet;
    }
  }
  
  private void d()
  {
    Thread.setDefaultUncaughtExceptionHandler(b);
  }
  
  public void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    synchronized (c)
    {
      c.put(paramUncaughtExceptionHandler, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */