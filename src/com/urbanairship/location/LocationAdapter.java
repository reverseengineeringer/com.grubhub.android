package com.urbanairship.location;

import android.app.PendingIntent;
import android.location.Location;
import com.urbanairship.PendingResult;

abstract interface LocationAdapter
{
  public abstract void cancelLocationUpdates(PendingIntent paramPendingIntent);
  
  public abstract boolean connect();
  
  public abstract void disconnect();
  
  public abstract void requestLocationUpdates(LocationRequestOptions paramLocationRequestOptions, PendingIntent paramPendingIntent);
  
  public abstract PendingResult<Location> requestSingleLocation(LocationRequestOptions paramLocationRequestOptions);
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */