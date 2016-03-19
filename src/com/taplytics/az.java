package com.taplytics;

import android.content.Intent;
import com.taplytics.sdk.TLGeofenceEventService;

public class az
  implements Runnable
{
  public az(TLGeofenceEventService paramTLGeofenceEventService, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      Object localObject = a;
      localObject = new m("com.google.android.gms.location.GeofencingEvent", "fromIntent", new Class[] { Intent.class }, new Object[] { localObject });
      if (((Boolean)((m)localObject).a("hasError")).booleanValue())
      {
        ck.c("Geofencing event error: " + ((Integer)((m)localObject).a("getErrorCode")).intValue());
        return;
      }
      c localc = new c();
      localc.a(new ba(this, (m)localObject));
      fy.e().a(null, localc);
      return;
    }
    catch (Exception localException)
    {
      ck.c("Error: " + localException.getMessage() + ", when adding geofences");
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */