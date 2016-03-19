package com.urbanairship.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.e;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.urbanairship.Logger;
import com.urbanairship.PendingResult;
import java.util.concurrent.Semaphore;

class FusedLocationAdapter
  implements LocationAdapter
{
  private GoogleApiClient client;
  private final Context context;
  
  FusedLocationAdapter(Context paramContext)
  {
    context = paramContext;
  }
  
  private LocationRequest createLocationRequest(LocationRequestOptions paramLocationRequestOptions)
  {
    LocationRequest localLocationRequest = LocationRequest.create().setInterval(paramLocationRequestOptions.getMinTime()).setSmallestDisplacement(paramLocationRequestOptions.getMinDistance());
    switch (paramLocationRequestOptions.getPriority())
    {
    default: 
      return localLocationRequest;
    case 1: 
      localLocationRequest.setPriority(100);
      return localLocationRequest;
    case 2: 
      localLocationRequest.setPriority(102);
      return localLocationRequest;
    case 3: 
      localLocationRequest.setPriority(104);
      return localLocationRequest;
    }
    localLocationRequest.setPriority(105);
    return localLocationRequest;
  }
  
  public void cancelLocationUpdates(PendingIntent paramPendingIntent)
  {
    if ((client == null) || (!client.isConnected()))
    {
      Logger.debug("FusedLocationAdapter - Adapter is not connected. Unable to cancel location updates.");
      return;
    }
    Logger.verbose("FusedLocationAdapter - Canceling updates.");
    LocationServices.FusedLocationApi.removeLocationUpdates(client, paramPendingIntent);
  }
  
  public boolean connect()
  {
    Semaphore localSemaphore = new Semaphore(0);
    try
    {
      if (e.a(context) != 0)
      {
        Logger.debug("FusedLocationAdapter - Google Play services is currently unavailable, unable to connect for fused location.");
        return false;
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Logger.debug("FusedLocationAdapter - Google Play services is currently unavailable, unable to connect for fused location. " + localIllegalStateException.getMessage());
      return false;
    }
    client = new GoogleApiClient.Builder(context).addApi(LocationServices.API).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks()
    {
      public void onConnected(Bundle paramAnonymousBundle)
      {
        Logger.verbose("FusedLocationAdapter - Google Play services connected for fused location.");
        localIllegalStateException.release();
      }
      
      public void onConnectionSuspended(int paramAnonymousInt)
      {
        Logger.verbose("FusedLocationAdapter - Google Play services connection suspended for fused location.");
      }
    }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener()
    {
      public void onConnectionFailed(ConnectionResult paramAnonymousConnectionResult)
      {
        Logger.verbose("FusedLocationAdapter - Google Play services failed to connect for fused location.");
        localIllegalStateException.release();
      }
    }).build();
    client.connect();
    try
    {
      localIllegalStateException.acquire();
      return client.isConnected();
    }
    catch (InterruptedException localInterruptedException)
    {
      Logger.error("FusedLocationAdapter - Exception while connecting to fused location", localInterruptedException);
      client.disconnect();
    }
    return false;
  }
  
  public void disconnect()
  {
    if (client != null) {
      client.disconnect();
    }
  }
  
  public void requestLocationUpdates(LocationRequestOptions paramLocationRequestOptions, PendingIntent paramPendingIntent)
  {
    if ((client == null) || (!client.isConnected()))
    {
      Logger.debug("FusedLocationAdapter - Adapter is not connected. Unable to request location updates.");
      return;
    }
    Logger.verbose("FusedLocationAdapter - Requesting updates.");
    paramLocationRequestOptions = createLocationRequest(paramLocationRequestOptions);
    LocationServices.FusedLocationApi.requestLocationUpdates(client, paramLocationRequestOptions, paramPendingIntent);
  }
  
  public PendingResult<Location> requestSingleLocation(LocationRequestOptions paramLocationRequestOptions)
  {
    if ((client == null) || (!client.isConnected()))
    {
      Logger.debug("FusedLocationAdapter - Adapter is not connected. Unable to request single location.");
      return null;
    }
    return new FusedLocationAdapter.SingleLocationRequest(this, paramLocationRequestOptions);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.FusedLocationAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */