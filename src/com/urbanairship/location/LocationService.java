package com.urbanairship.location;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.SparseArray;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.PendingResult;
import com.urbanairship.PendingResult.ResultCallback;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.LocationEvent.UpdateType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class LocationService
  extends Service
{
  static final String ACTION_CHECK_LOCATION_UPDATES = "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES";
  static final String ACTION_LOCATION_UPDATE = "com.urbanairship.location.ACTION_LOCATION_UPDATE";
  static final String EXTRA_LOCATION_REQUEST_OPTIONS = "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS";
  static final String EXTRA_RESULT_RECEIVER = "com.urbanairship.location.EXTRA_RESULT_RECEIVER";
  static final int MSG_CANCEL_SINGLE_LOCATION_REQUEST = 6;
  private static final int MSG_HANDLE_INTENT = 7;
  static final int MSG_NEW_LOCATION_UPDATE = 3;
  static final int MSG_REQUEST_SINGLE_LOCATION = 5;
  static final int MSG_SINGLE_REQUEST_RESULT = 4;
  static final int MSG_SUBSCRIBE_UPDATES = 1;
  static final int MSG_UNSUBSCRIBE_UPDATES = 2;
  static final int RESULT_LOCATION_UPDATES_STARTED = 1;
  static boolean areUpdatesStopped = false;
  static LocationRequestOptions lastUpdateOptions = null;
  LocationService.IncomingHandler handler;
  UALocationProvider locationProvider;
  Looper looper;
  private Messenger messenger;
  private final HashMap<Messenger, SparseArray<PendingResult<Location>>> pendingResultMap = new HashMap();
  private final Set<Messenger> subscribedClients = new HashSet();
  
  private void addPendingResult(Messenger paramMessenger, int paramInt, PendingResult<Location> paramPendingResult)
  {
    HashMap localHashMap = pendingResultMap;
    if ((paramMessenger != null) && (paramInt > 0)) {}
    try
    {
      if (!pendingResultMap.containsKey(paramMessenger)) {
        pendingResultMap.put(paramMessenger, new SparseArray());
      }
      ((SparseArray)pendingResultMap.get(paramMessenger)).put(paramInt, paramPendingResult);
      return;
    }
    finally {}
  }
  
  private PendingIntent createLocationUpdateIntent(LocationRequestOptions paramLocationRequestOptions)
  {
    Intent localIntent = new Intent(getApplicationContext(), LocationService.class).setAction("com.urbanairship.location.ACTION_LOCATION_UPDATE");
    if (paramLocationRequestOptions != null) {
      localIntent.putExtra("com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS", paramLocationRequestOptions);
    }
    return PendingIntent.getService(getApplicationContext(), 0, localIntent, 134217728);
  }
  
  private boolean isContinuousLocationUpdatesAllowed()
  {
    UALocationManager localUALocationManager = UAirship.shared().getLocationManager();
    Analytics localAnalytics = UAirship.shared().getAnalytics();
    return (localUALocationManager.isLocationUpdatesEnabled()) && ((localUALocationManager.isBackgroundLocationAllowed()) || (localAnalytics.isAppInForeground()));
  }
  
  private void onCancelSingleUpdate(Message paramMessage)
  {
    int i = arg1;
    paramMessage = replyTo;
    PendingResult localPendingResult = removePendingResult(paramMessage, i);
    if (localPendingResult != null)
    {
      Logger.debug("LocationService - Canceled single request for client: " + paramMessage + " ID: " + i);
      localPendingResult.cancel();
    }
  }
  
  private void onCheckLocationUpdates(Intent paramIntent)
  {
    int j = 0;
    int i;
    if (isContinuousLocationUpdatesAllowed())
    {
      LocationRequestOptions localLocationRequestOptions = UAirship.shared().getLocationManager().getLocationRequestOptions();
      if ((lastUpdateOptions == null) || (!lastUpdateOptions.equals(localLocationRequestOptions)))
      {
        Logger.debug("LocationService - Starting updates.");
        lastUpdateOptions = localLocationRequestOptions;
        areUpdatesStopped = false;
        PendingIntent localPendingIntent = createLocationUpdateIntent(localLocationRequestOptions);
        locationProvider.connect();
        locationProvider.cancelRequests(localPendingIntent);
        locationProvider.requestLocationUpdates(localLocationRequestOptions, localPendingIntent);
      }
      i = 1;
    }
    for (;;)
    {
      paramIntent = (ResultReceiver)paramIntent.getParcelableExtra("com.urbanairship.location.EXTRA_RESULT_RECEIVER");
      if (paramIntent != null) {
        paramIntent.send(i, new Bundle());
      }
      return;
      i = j;
      if (!areUpdatesStopped)
      {
        Logger.debug("LocationService - Stopping updates.");
        locationProvider.cancelRequests(createLocationUpdateIntent(null));
        lastUpdateOptions = null;
        areUpdatesStopped = true;
        i = j;
      }
    }
  }
  
  private void onHandleIntent(Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {
      return;
    }
    Logger.verbose("LocationService - Received intent with action: " + paramIntent.getAction());
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
      case 0: 
        onCheckLocationUpdates(paramIntent);
        return;
        if (str.equals("com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.location.ACTION_LOCATION_UPDATE")) {
            i = 1;
          }
        }
        break;
      }
    }
    onLocationUpdate(paramIntent);
  }
  
  private void onLocationUpdate(Intent paramIntent)
  {
    if ((!isContinuousLocationUpdatesAllowed()) || (areUpdatesStopped)) {
      return;
    }
    Object localObject = (LocationRequestOptions)paramIntent.getParcelableExtra("com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS");
    if (lastUpdateOptions == null) {
      lastUpdateOptions = (LocationRequestOptions)localObject;
    }
    if (paramIntent.hasExtra("providerEnabled"))
    {
      Logger.debug("LocationService - Restarting location updates. One of the location providers was enabled or disabled.");
      paramIntent = UAirship.shared().getLocationManager().getLocationRequestOptions();
      localObject = createLocationUpdateIntent(paramIntent);
      locationProvider.connect();
      locationProvider.cancelRequests((PendingIntent)localObject);
      locationProvider.requestLocationUpdates(paramIntent, (PendingIntent)localObject);
      return;
    }
    if (paramIntent.hasExtra("location")) {}
    for (paramIntent = paramIntent.getParcelableExtra("location");; paramIntent = paramIntent.getParcelableExtra("com.google.android.location.LOCATION"))
    {
      paramIntent = (Location)paramIntent;
      if (paramIntent == null) {
        break;
      }
      Logger.info("Received location update: " + paramIntent);
      UAirship.shared().getAnalytics().recordLocation(paramIntent, (LocationRequestOptions)localObject, LocationEvent.UpdateType.CONTINUOUS);
      localObject = new ArrayList(subscribedClients).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Messenger localMessenger = (Messenger)((Iterator)localObject).next();
        if (!sendClientMessage(localMessenger, 3, 0, paramIntent)) {
          subscribedClients.remove(localMessenger);
        }
      }
      break;
    }
  }
  
  private void onRequestSingleUpdate(final Message paramMessage)
  {
    final int i = arg1;
    final Messenger localMessenger = replyTo;
    paramMessage = (LocationRequestOptions)paramMessage.getData().getParcelable("com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS");
    if (paramMessage == null)
    {
      Logger.warn("Location service unable to perform single location request. Missing request options.");
      sendClientMessage(localMessenger, 4, i, null);
      return;
    }
    Logger.verbose("LocationService - Single location request for client: " + localMessenger + " ID: " + i);
    Logger.info("Requesting single location update with request options: " + paramMessage);
    locationProvider.connect();
    PendingResult localPendingResult = locationProvider.requestSingleLocation(paramMessage);
    if (localPendingResult == null)
    {
      Logger.warn("Location service unable to perform single location request. UALocationProvider failed to request a location.");
      sendClientMessage(localMessenger, 4, i, null);
      return;
    }
    addPendingResult(localMessenger, i, localPendingResult);
    localPendingResult.onResult(new PendingResult.ResultCallback()
    {
      public void onResult(Location paramAnonymousLocation)
      {
        Logger.verbose("LocationService - Single location received for client: " + localMessenger + " ID: " + i);
        Logger.info("Received single location update: " + paramAnonymousLocation);
        UAirship.shared().getAnalytics().recordLocation(paramAnonymousLocation, paramMessage, LocationEvent.UpdateType.SINGLE);
        LocationService.this.sendClientMessage(localMessenger, 4, i, paramAnonymousLocation);
        LocationService.this.removePendingResult(localMessenger, i);
      }
    });
  }
  
  private void onSubscribeUpdates(Message paramMessage)
  {
    if (replyTo != null)
    {
      Logger.debug("LocationService - Client subscribed for updates: " + replyTo);
      subscribedClients.add(replyTo);
    }
  }
  
  private void onUnsubscribeUpdates(Message paramMessage)
  {
    if (subscribedClients.remove(replyTo)) {
      Logger.debug("LocationService - Client unsubscribed from updates: " + replyTo);
    }
  }
  
  private PendingResult<Location> removePendingResult(Messenger paramMessenger, int paramInt)
  {
    PendingResult localPendingResult = null;
    for (;;)
    {
      try
      {
        synchronized (pendingResultMap)
        {
          if (!pendingResultMap.containsKey(paramMessenger))
          {
            paramMessenger = localPendingResult;
            return paramMessenger;
          }
          SparseArray localSparseArray = (SparseArray)pendingResultMap.get(paramMessenger);
          if (localSparseArray != null)
          {
            localPendingResult = (PendingResult)localSparseArray.get(paramInt);
            localSparseArray.remove(paramInt);
            if (localSparseArray.size() == 0) {
              pendingResultMap.remove(paramMessenger);
            }
            paramMessenger = localPendingResult;
          }
        }
      }
      finally {}
      paramMessenger = localPendingResult;
    }
  }
  
  private boolean sendClientMessage(Messenger paramMessenger, int paramInt1, int paramInt2, Object paramObject)
  {
    if (paramMessenger == null) {
      return false;
    }
    try
    {
      paramMessenger.send(Message.obtain(null, paramInt1, paramInt2, 0, paramObject));
      return true;
    }
    catch (RemoteException paramMessenger) {}
    return false;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return messenger.getBinder();
  }
  
  public void onCreate()
  {
    super.onCreate();
    Autopilot.automaticTakeOff(getApplicationContext());
    HandlerThread localHandlerThread = new HandlerThread("LocationService");
    localHandlerThread.start();
    looper = localHandlerThread.getLooper();
    handler = new LocationService.IncomingHandler(this, looper);
    messenger = new Messenger(handler);
    locationProvider = new UALocationProvider(getApplicationContext());
    Logger.verbose("LocationService - Service created.");
  }
  
  public void onDestroy()
  {
    locationProvider.disconnect();
    looper.quit();
    super.onDestroy();
    Logger.verbose("LocationService - Service destroyed.");
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Message localMessage = handler.obtainMessage();
    arg1 = paramInt2;
    obj = paramIntent;
    what = 7;
    handler.sendMessage(localMessage);
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */