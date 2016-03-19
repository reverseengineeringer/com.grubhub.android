package com.urbanairship.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import com.urbanairship.Logger;
import com.urbanairship.PendingResult;
import com.urbanairship.util.UAStringUtil;
import java.util.Iterator;
import java.util.List;

class StandardLocationAdapter
  implements LocationAdapter
{
  private static final String PASSIVE_PROVIDER = "passive";
  private final LocationManager locationManager;
  
  StandardLocationAdapter(Context paramContext)
  {
    locationManager = ((LocationManager)paramContext.getSystemService("location"));
  }
  
  private Criteria createCriteria(LocationRequestOptions paramLocationRequestOptions)
  {
    Criteria localCriteria = new Criteria();
    switch (paramLocationRequestOptions.getPriority())
    {
    default: 
      return localCriteria;
    case 1: 
      localCriteria.setAccuracy(1);
      localCriteria.setPowerRequirement(3);
      return localCriteria;
    case 2: 
      localCriteria.setAccuracy(2);
      localCriteria.setPowerRequirement(2);
      return localCriteria;
    }
    localCriteria.setAccuracy(0);
    localCriteria.setPowerRequirement(1);
    return localCriteria;
  }
  
  private String getBestProvider(Criteria paramCriteria, LocationRequestOptions paramLocationRequestOptions)
  {
    if (paramLocationRequestOptions.getPriority() == 4)
    {
      paramCriteria = locationManager.getProviders(paramCriteria, true);
      if (paramCriteria == null) {}
      while (!paramCriteria.contains("passive")) {
        return null;
      }
      return "passive";
    }
    return locationManager.getBestProvider(paramCriteria, true);
  }
  
  public void cancelLocationUpdates(PendingIntent paramPendingIntent)
  {
    Logger.verbose("StandardLocationAdapter - Canceling location updates.");
    locationManager.removeUpdates(paramPendingIntent);
  }
  
  public boolean connect()
  {
    return true;
  }
  
  public void disconnect() {}
  
  public void requestLocationUpdates(LocationRequestOptions paramLocationRequestOptions, PendingIntent paramPendingIntent)
  {
    Object localObject1 = createCriteria(paramLocationRequestOptions);
    Object localObject2 = locationManager.getProviders((Criteria)localObject1, false);
    if (localObject2 != null)
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        Logger.verbose("StandardLocationAdapter - Update listening provider enable/disabled for: " + str);
        locationManager.requestLocationUpdates(str, Long.MAX_VALUE, Float.MAX_VALUE, paramPendingIntent);
      }
    }
    localObject1 = getBestProvider((Criteria)localObject1, paramLocationRequestOptions);
    if (!UAStringUtil.isEmpty((String)localObject1))
    {
      Logger.verbose("StandardLocationAdapter - Requesting location updates from provider: " + (String)localObject1);
      locationManager.requestLocationUpdates((String)localObject1, paramLocationRequestOptions.getMinTime(), paramLocationRequestOptions.getMinDistance(), paramPendingIntent);
    }
  }
  
  public PendingResult<Location> requestSingleLocation(LocationRequestOptions paramLocationRequestOptions)
  {
    return new StandardLocationAdapter.SingleLocationRequest(this, paramLocationRequestOptions);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.StandardLocationAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */