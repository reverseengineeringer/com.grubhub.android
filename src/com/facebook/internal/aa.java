package com.facebook.internal;

import com.facebook.m;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

public class aa<T>
{
  private T a;
  private CountDownLatch b = new CountDownLatch(1);
  
  public aa(final Callable<T> paramCallable)
  {
    m.d().execute(new FutureTask(new Callable()
    {
      public Void a()
        throws Exception
      {
        try
        {
          aa.a(aa.this, paramCallable.call());
          return null;
        }
        finally
        {
          aa.a(aa.this).countDown();
        }
      }
    }));
  }
  
  private void b()
  {
    if (b == null) {
      return;
    }
    try
    {
      b.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public T a()
  {
    b();
    return (T)a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */