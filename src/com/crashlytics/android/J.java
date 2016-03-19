package com.crashlytics.android;

import android.os.AsyncTask;

final class j
  extends AsyncTask<Void, Void, Void>
{
  j(CrashTest paramCrashTest, long paramLong) {}
  
  private Void a()
  {
    try
    {
      Thread.sleep(a);
      b.throwRuntimeException("Background thread crash");
      return null;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */