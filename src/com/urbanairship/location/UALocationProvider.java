package com.urbanairship.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import com.urbanairship.Logger;
import com.urbanairship.PendingResult;
import com.urbanairship.google.PlayServicesUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class UALocationProvider
{
  private final List<LocationAdapter> adapters = new ArrayList();
  private LocationAdapter connectedAdapter;
  private boolean isConnected = false;
  
  public UALocationProvider(Context paramContext)
  {
    if ((PlayServicesUtils.isGooglePlayStoreAvailable()) && (PlayServicesUtils.isFusedLocationDependencyAvailable())) {
      adapters.add(new FusedLocationAdapter(paramContext));
    }
    adapters.add(new StandardLocationAdapter(paramContext));
  }
  
  UALocationProvider(LocationAdapter... paramVarArgs)
  {
    adapters.addAll(Arrays.asList(paramVarArgs));
  }
  
  public void cancelRequests(PendingIntent paramPendingIntent)
  {
    Logger.verbose("UALocationProvider - Canceling location requests.");
    Iterator localIterator = adapters.iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        LocationAdapter localLocationAdapter = (LocationAdapter)localIterator.next();
        Logger.verbose("UALocationProvider - Canceling location requests for adapter: " + localLocationAdapter);
        if ((localLocationAdapter == connectedAdapter) || (localLocationAdapter.connect())) {}
        try
        {
          localLocationAdapter.cancelLocationUpdates(paramPendingIntent);
          if (localLocationAdapter != connectedAdapter) {
            localLocationAdapter.disconnect();
          }
        }
        catch (SecurityException localSecurityException)
        {
          for (;;)
          {
            Logger.verbose("Unable to cancel location updates: " + localSecurityException.getMessage());
          }
        }
      }
    }
  }
  
  public void connect()
  {
    if (isConnected) {
      return;
    }
    Iterator localIterator = adapters.iterator();
    for (;;)
    {
      LocationAdapter localLocationAdapter;
      if (localIterator.hasNext())
      {
        localLocationAdapter = (LocationAdapter)localIterator.next();
        Logger.verbose("UALocationProvider - Attempting to connect to location adapter: " + localLocationAdapter);
        if (localLocationAdapter.connect())
        {
          Logger.verbose("UALocationProvider - Connected to location adapter: " + localLocationAdapter);
          connectedAdapter = localLocationAdapter;
        }
      }
      else
      {
        isConnected = true;
        return;
      }
      Logger.verbose("UALocationProvider - Failed to connect to location adapter: " + localLocationAdapter);
    }
  }
  
  public void disconnect()
  {
    if (!isConnected) {
      return;
    }
    Logger.verbose("UALocationProvider - Disconnecting from location provider.");
    if (connectedAdapter != null)
    {
      connectedAdapter.disconnect();
      connectedAdapter = null;
    }
    isConnected = false;
  }
  
  public void requestLocationUpdates(LocationRequestOptions paramLocationRequestOptions, PendingIntent paramPendingIntent)
  {
    if (!isConnected) {
      throw new IllegalStateException("Provider must be connected before making requests.");
    }
    if (connectedAdapter == null)
    {
      Logger.debug("UALocationProvider - Ignoring request, connected adapter unavailable.");
      return;
    }
    Logger.verbose("UALocationProvider - Requesting location updates: " + paramLocationRequestOptions);
    try
    {
      connectedAdapter.requestLocationUpdates(paramLocationRequestOptions, paramPendingIntent);
      return;
    }
    catch (SecurityException paramLocationRequestOptions)
    {
      Logger.error("Unable to request location updates: " + paramLocationRequestOptions.getMessage());
    }
  }
  
  public PendingResult<Location> requestSingleLocation(LocationRequestOptions paramLocationRequestOptions)
  {
    if (!isConnected) {
      throw new IllegalStateException("Provider must be connected before making requests.");
    }
    if (connectedAdapter == null)
    {
      Logger.debug("UALocationProvider - Ignoring request, connected adapter unavailable.");
      return null;
    }
    Logger.verbose("UALocationProvider - Requesting single location update: " + paramLocationRequestOptions);
    try
    {
      paramLocationRequestOptions = connectedAdapter.requestSingleLocation(paramLocationRequestOptions);
      return paramLocationRequestOptions;
    }
    catch (SecurityException paramLocationRequestOptions)
    {
      Logger.error("Unable to request location: " + paramLocationRequestOptions.getMessage());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */