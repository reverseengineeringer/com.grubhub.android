package com.urbanairship.location;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.urbanairship.Logger;

class UALocationManager$1
  implements ServiceConnection
{
  UALocationManager$1(UALocationManager paramUALocationManager) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Logger.verbose("Location service connected.");
    UALocationManager.access$000(this$0, paramIBinder);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.verbose("Location service disconnected.");
    UALocationManager.access$100(this$0);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */