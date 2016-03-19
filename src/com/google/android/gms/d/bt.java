package com.google.android.gms.d;

import android.util.Log;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class bt
  extends ThreadPoolExecutor
{
  public bt(bs parambs)
  {
    super(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    setThreadFactory(new bu(null));
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    new FutureTask(paramRunnable, paramT)
    {
      protected void setException(Throwable paramAnonymousThrowable)
      {
        Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = bs.b(a);
        if (localUncaughtExceptionHandler != null) {
          localUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), paramAnonymousThrowable);
        }
        for (;;)
        {
          super.setException(paramAnonymousThrowable);
          return;
          if (Log.isLoggable("GAv4", 6)) {
            Log.e("GAv4", "MeasurementExecutor: job failed with " + paramAnonymousThrowable);
          }
        }
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */