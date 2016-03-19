package com.urbanairship.push.iam;

import android.os.Handler;
import android.os.SystemClock;

abstract class Timer
{
  private long elapsedTimeMs;
  private final Handler handler = new Handler();
  private boolean isStarted;
  private long remainingTimeMs;
  private long startTimeMs;
  private final Runnable trigger = new Runnable()
  {
    public void run()
    {
      if (isStarted)
      {
        stop();
        onFinish();
      }
    }
  };
  
  Timer(long paramLong)
  {
    remainingTimeMs = paramLong;
  }
  
  long getRunTime()
  {
    if (isStarted) {
      return elapsedTimeMs + SystemClock.elapsedRealtime() - startTimeMs;
    }
    return elapsedTimeMs;
  }
  
  protected abstract void onFinish();
  
  void start()
  {
    if (isStarted) {
      return;
    }
    isStarted = true;
    startTimeMs = SystemClock.elapsedRealtime();
    if (remainingTimeMs > 0L)
    {
      handler.postDelayed(trigger, remainingTimeMs);
      return;
    }
    handler.post(trigger);
  }
  
  void stop()
  {
    if (!isStarted) {
      return;
    }
    elapsedTimeMs = (SystemClock.elapsedRealtime() - startTimeMs);
    isStarted = false;
    handler.removeCallbacks(trigger);
    remainingTimeMs = Math.max(0L, remainingTimeMs - (SystemClock.elapsedRealtime() - startTimeMs));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.Timer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */