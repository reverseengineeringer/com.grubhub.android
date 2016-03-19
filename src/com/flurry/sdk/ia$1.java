package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class ia$1
  extends ThreadPoolExecutor
{
  ia$1(ia paramia, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue paramBlockingQueue)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramBlockingQueue);
  }
  
  protected void afterExecute(Runnable arg1, final Throwable paramThrowable)
  {
    super.afterExecute(???, paramThrowable);
    paramThrowable = ia.a(a, ???);
    if (paramThrowable == null) {
      return;
    }
    synchronized (ia.a(a))
    {
      ia.a(a).remove(paramThrowable);
      ia.a(a, paramThrowable);
      new jp()
      {
        public void a()
        {
          paramThrowable.l();
        }
      }.run();
      return;
    }
  }
  
  protected void beforeExecute(final Thread paramThread, Runnable paramRunnable)
  {
    super.beforeExecute(paramThread, paramRunnable);
    paramThread = ia.a(a, paramRunnable);
    if (paramThread == null) {
      return;
    }
    new jp()
    {
      public void a()
      {
        paramThread.k();
      }
    }.run();
  }
  
  protected <V> RunnableFuture<V> newTaskFor(Runnable paramRunnable, V arg2)
  {
    hz localhz = new hz(paramRunnable, ???);
    synchronized (ia.a(a))
    {
      ia.a(a).put((jq)paramRunnable, localhz);
      return localhz;
    }
  }
  
  protected <V> RunnableFuture<V> newTaskFor(Callable<V> paramCallable)
  {
    throw new UnsupportedOperationException("Callable not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ia.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */