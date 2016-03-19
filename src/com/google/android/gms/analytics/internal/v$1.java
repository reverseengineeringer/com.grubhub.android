package com.google.android.gms.analytics.internal;

class v$1
  implements Thread.UncaughtExceptionHandler
{
  v$1(v paramv) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThread = a.g();
    if (paramThread != null) {
      paramThread.zze("Job execution failed", paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.v.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */