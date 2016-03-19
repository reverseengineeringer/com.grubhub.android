package com.urbanairship;

import android.os.Looper;

final class UAirship$1
  extends CancelableOperation
{
  UAirship$1(Looper paramLooper, UAirship.OnReadyCallback paramOnReadyCallback)
  {
    super(paramLooper);
  }
  
  public void onRun()
  {
    if (val$callback != null) {
      val$callback.onAirshipReady(UAirship.shared());
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UAirship.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */