package com.urbanairship.location;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.urbanairship.UAirship;
import java.util.Iterator;
import java.util.List;

class UALocationManager$IncomingHandler
  extends Handler
{
  UALocationManager$IncomingHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message arg1)
  {
    Object localObject1 = UAirship.shared().getLocationManager();
    switch (what)
    {
    default: 
      super.handleMessage(???);
    case 3: 
      do
      {
        return;
        localLocation = (Location)obj;
      } while (localLocation == null);
      synchronized (UALocationManager.access$400((UALocationManager)localObject1))
      {
        localObject1 = UALocationManager.access$400((UALocationManager)localObject1).iterator();
        if (((Iterator)localObject1).hasNext()) {
          ((LocationListener)((Iterator)localObject1).next()).onLocationChanged(localLocation);
        }
      }
      return;
    }
    Location localLocation = (Location)obj;
    int i = arg1;
    synchronized (UALocationManager.access$900(localUALocationManager))
    {
      PendingLocationResult localPendingLocationResult = (PendingLocationResult)UALocationManager.access$900(localUALocationManager).get(i);
      if (localPendingLocationResult != null)
      {
        localPendingLocationResult.setResult(localLocation);
        UALocationManager.access$900(localUALocationManager).remove(i);
        UALocationManager.access$200(localUALocationManager);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationManager.IncomingHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */