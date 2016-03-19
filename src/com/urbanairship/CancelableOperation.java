package com.urbanairship;

import android.os.Handler;
import android.os.Looper;

abstract class CancelableOperation
  implements Cancelable, Runnable
{
  private final Handler handler;
  private final Runnable internalRunnable;
  private boolean isCanceled = false;
  private boolean isFinished = false;
  private boolean isRunning = false;
  
  CancelableOperation(Looper paramLooper)
  {
    if (paramLooper != null)
    {
      handler = new Handler(paramLooper);
      internalRunnable = new Runnable()
      {
        public void run()
        {
          synchronized (CancelableOperation.this)
          {
            if (isDone()) {
              return;
            }
            onRun();
            CancelableOperation.access$002(CancelableOperation.this, true);
            return;
          }
        }
      };
      return;
    }
    paramLooper = Looper.myLooper();
    if (paramLooper != null) {}
    for (paramLooper = new Handler(paramLooper);; paramLooper = new Handler(Looper.getMainLooper()))
    {
      handler = paramLooper;
      break;
    }
  }
  
  public final void cancel()
  {
    try
    {
      if (!isDone())
      {
        isCanceled = true;
        handler.removeCallbacks(internalRunnable);
        handler.post(new Runnable()
        {
          public void run()
          {
            onCancel();
          }
        });
      }
      return;
    }
    finally {}
  }
  
  public final boolean isCanceled()
  {
    try
    {
      boolean bool = isCanceled;
      return bool;
    }
    finally {}
  }
  
  public final boolean isDone()
  {
    for (;;)
    {
      try
      {
        if (isFinished) {
          break label28;
        }
        if (!isCanceled) {
          break label33;
        }
      }
      finally {}
      return bool;
      label28:
      boolean bool = true;
      continue;
      label33:
      bool = false;
    }
  }
  
  protected void onCancel() {}
  
  protected abstract void onRun();
  
  public final void run()
  {
    try
    {
      if ((isDone()) || (isRunning)) {
        return;
      }
      isRunning = true;
      handler.post(internalRunnable);
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.CancelableOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */