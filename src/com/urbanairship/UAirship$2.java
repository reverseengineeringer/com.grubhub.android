package com.urbanairship;

import android.app.Application;

final class UAirship$2
  implements Runnable
{
  UAirship$2(Application paramApplication, AirshipConfigOptions paramAirshipConfigOptions, UAirship.OnReadyCallback paramOnReadyCallback) {}
  
  public void run()
  {
    UAirship.access$000(val$application, val$options, val$readyCallback);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UAirship.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */