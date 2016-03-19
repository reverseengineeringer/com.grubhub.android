package com.google.android.gms.a.a;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class c
  extends Thread
{
  CountDownLatch a;
  boolean b;
  private WeakReference<a> c;
  private long d;
  
  public c(a parama, long paramLong)
  {
    c = new WeakReference(parama);
    d = paramLong;
    a = new CountDownLatch(1);
    b = false;
    start();
  }
  
  private void c()
  {
    a locala = (a)c.get();
    if (locala != null)
    {
      locala.b();
      b = true;
    }
  }
  
  public void a()
  {
    a.countDown();
  }
  
  public boolean b()
  {
    return b;
  }
  
  public void run()
  {
    try
    {
      if (!a.await(d, TimeUnit.MILLISECONDS)) {
        c();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      c();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */