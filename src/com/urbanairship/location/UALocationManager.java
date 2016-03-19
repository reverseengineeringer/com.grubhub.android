package com.urbanairship.location;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.content.o;
import android.util.SparseArray;
import com.urbanairship.BaseManager;
import com.urbanairship.Logger;
import com.urbanairship.PendingResult;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.PreferenceDataStore.PreferenceChangeListener;
import com.urbanairship.UAirship;
import java.util.ArrayList;
import java.util.List;

public class UALocationManager
  extends BaseManager
{
  private final Context context;
  private boolean isBound;
  private boolean isSubscribed;
  private final List<LocationListener> locationListeners = new ArrayList();
  private final Messenger messenger;
  private int nextSingleLocationRequestId = 1;
  private final LocationPreferences preferences;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      Logger.verbose("Location service connected.");
      UALocationManager.this.onServiceConnected(paramAnonymousIBinder);
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      Logger.verbose("Location service disconnected.");
      UALocationManager.this.onServiceDisconnected();
    }
  };
  private Messenger serviceMessenger;
  private final SparseArray<UALocationManager.SingleLocationRequest> singleLocationRequests = new SparseArray();
  
  public UALocationManager(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    context = paramContext.getApplicationContext();
    preferences = new LocationPreferences(paramPreferenceDataStore);
    messenger = new Messenger(new UALocationManager.IncomingHandler(Looper.getMainLooper()));
    preferences.setListener(new PreferenceDataStore.PreferenceChangeListener()
    {
      public void onPreferenceChange(String paramAnonymousString)
      {
        UALocationManager.this.updateServiceConnection();
      }
    });
  }
  
  /* Error */
  private void bindService()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 127	com/urbanairship/location/UALocationManager:isBound	Z
    //   6: ifne +39 -> 45
    //   9: ldc -113
    //   11: invokestatic 149	com/urbanairship/Logger:verbose	(Ljava/lang/String;)V
    //   14: invokestatic 152	com/urbanairship/UAirship:getApplicationContext	()Landroid/content/Context;
    //   17: astore_1
    //   18: aload_1
    //   19: new 154	android/content/Intent
    //   22: dup
    //   23: aload_1
    //   24: ldc -100
    //   26: invokespecial 159	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   29: aload_0
    //   30: getfield 56	com/urbanairship/location/UALocationManager:serviceConnection	Landroid/content/ServiceConnection;
    //   33: iconst_1
    //   34: invokevirtual 162	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   37: ifeq +11 -> 48
    //   40: aload_0
    //   41: iconst_1
    //   42: putfield 127	com/urbanairship/location/UALocationManager:isBound	Z
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: ldc -92
    //   50: invokestatic 167	com/urbanairship/Logger:error	(Ljava/lang/String;)V
    //   53: goto -8 -> 45
    //   56: astore_1
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_1
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	UALocationManager
    //   17	7	1	localContext	Context
    //   56	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	45	56	finally
    //   48	53	56	finally
  }
  
  /* Error */
  private void onServiceConnected(IBinder paramIBinder)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: new 73	android/os/Messenger
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 169	android/os/Messenger:<init>	(Landroid/os/IBinder;)V
    //   11: putfield 171	com/urbanairship/location/UALocationManager:serviceMessenger	Landroid/os/Messenger;
    //   14: aload_0
    //   15: getfield 46	com/urbanairship/location/UALocationManager:singleLocationRequests	Landroid/util/SparseArray;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: iconst_0
    //   22: istore_2
    //   23: iload_2
    //   24: aload_0
    //   25: getfield 46	com/urbanairship/location/UALocationManager:singleLocationRequests	Landroid/util/SparseArray;
    //   28: invokevirtual 175	android/util/SparseArray:size	()I
    //   31: if_icmpge +24 -> 55
    //   34: aload_0
    //   35: getfield 46	com/urbanairship/location/UALocationManager:singleLocationRequests	Landroid/util/SparseArray;
    //   38: iload_2
    //   39: invokevirtual 179	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   42: checkcast 181	com/urbanairship/location/UALocationManager$SingleLocationRequest
    //   45: invokevirtual 184	com/urbanairship/location/UALocationManager$SingleLocationRequest:sendLocationRequest	()V
    //   48: iload_2
    //   49: iconst_1
    //   50: iadd
    //   51: istore_2
    //   52: goto -29 -> 23
    //   55: aload_1
    //   56: monitorexit
    //   57: aload_0
    //   58: invokespecial 119	com/urbanairship/location/UALocationManager:updateServiceConnection	()V
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: astore_3
    //   65: aload_1
    //   66: monitorexit
    //   67: aload_3
    //   68: athrow
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	UALocationManager
    //   0	74	1	paramIBinder	IBinder
    //   22	30	2	i	int
    //   64	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   23	48	64	finally
    //   55	57	64	finally
    //   65	67	64	finally
    //   2	21	69	finally
    //   57	61	69	finally
    //   67	69	69	finally
  }
  
  private void onServiceDisconnected()
  {
    try
    {
      serviceMessenger = null;
      isSubscribed = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean sendMessage(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (serviceMessenger == null) {
      return false;
    }
    Message localMessage = Message.obtain(null, paramInt1, paramInt2, 0);
    if (paramBundle != null) {
      localMessage.setData(paramBundle);
    }
    replyTo = messenger;
    try
    {
      serviceMessenger.send(localMessage);
      return true;
    }
    catch (RemoteException paramBundle)
    {
      Logger.debug("UALocationManager - Remote exception when sending message to location service");
    }
    return false;
  }
  
  private void subscribeUpdates()
  {
    try
    {
      if ((!isSubscribed) && (sendMessage(1, 0, null)))
      {
        Logger.info("Subscribing to continuous location updates.");
        isSubscribed = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void unbindService()
  {
    try
    {
      if (isBound)
      {
        Logger.verbose("UALocationManager - Unbinding to location service.");
        UAirship.getApplicationContext().unbindService(serviceConnection);
        isBound = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void unsubscribeUpdates()
  {
    try
    {
      if (isSubscribed)
      {
        Logger.info("Unsubscribing from continuous location updates.");
        sendMessage(2, 0, null);
        isSubscribed = false;
        updateServiceConnection();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void updateServiceConnection()
  {
    Object localObject = new ResultReceiver(new Handler(Looper.getMainLooper()))
    {
      private void onUpdatesStarted()
      {
        synchronized (locationListeners)
        {
          if (!locationListeners.isEmpty())
          {
            if (isBound) {
              UALocationManager.this.subscribeUpdates();
            }
          }
          else {
            return;
          }
          UALocationManager.this.bindService();
        }
      }
      
      private void onUpdatesStopped()
      {
        UALocationManager.this.unsubscribeUpdates();
        synchronized (singleLocationRequests)
        {
          if (singleLocationRequests.size() == 0) {
            UALocationManager.this.unbindService();
          }
          return;
        }
      }
      
      protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        if (paramAnonymousInt == 1)
        {
          onUpdatesStarted();
          return;
        }
        onUpdatesStopped();
      }
    };
    localObject = new Intent(context, LocationService.class).setAction("com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES").putExtra("com.urbanairship.location.EXTRA_RESULT_RECEIVER", (Parcelable)localObject);
    if (context.startService((Intent)localObject) == null) {
      Logger.error("Unable to start location service. Check that the location service is added to the manifest.");
    }
  }
  
  public void addLocationListener(LocationListener paramLocationListener)
  {
    synchronized (locationListeners)
    {
      locationListeners.add(paramLocationListener);
      updateServiceConnection();
      return;
    }
  }
  
  public LocationRequestOptions getLocationRequestOptions()
  {
    LocationRequestOptions localLocationRequestOptions2 = preferences.getLocationRequestOptions();
    LocationRequestOptions localLocationRequestOptions1 = localLocationRequestOptions2;
    if (localLocationRequestOptions2 == null) {
      localLocationRequestOptions1 = new LocationRequestOptions.Builder().create();
    }
    return localLocationRequestOptions1;
  }
  
  LocationPreferences getPreferences()
  {
    return preferences;
  }
  
  protected void init()
  {
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public void run()
      {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("com.urbanairship.analytics.APP_FOREGROUND");
        localIntentFilter.addAction("com.urbanairship.analytics.APP_BACKGROUND");
        o.a(context).a(new BroadcastReceiver()
        {
          public void onReceive(Context paramAnonymous2Context, Intent paramAnonymous2Intent)
          {
            UALocationManager.this.updateServiceConnection();
          }
        }, localIntentFilter);
        UALocationManager.this.updateServiceConnection();
      }
    }, 1000L);
  }
  
  public boolean isBackgroundLocationAllowed()
  {
    return preferences.isBackgroundLocationAllowed();
  }
  
  public boolean isLocationUpdatesEnabled()
  {
    return preferences.isLocationUpdatesEnabled();
  }
  
  public void removeLocationListener(LocationListener paramLocationListener)
  {
    synchronized (locationListeners)
    {
      locationListeners.remove(paramLocationListener);
      updateServiceConnection();
      return;
    }
  }
  
  public PendingResult<Location> requestSingleLocation()
  {
    return requestSingleLocation(getLocationRequestOptions());
  }
  
  /* Error */
  public PendingResult<Location> requestSingleLocation(LocationRequestOptions paramLocationRequestOptions)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +14 -> 15
    //   4: new 295	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc_w 297
    //   11: invokespecial 299	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: aload_0
    //   16: getfield 46	com/urbanairship/location/UALocationManager:singleLocationRequests	Landroid/util/SparseArray;
    //   19: astore_3
    //   20: aload_3
    //   21: monitorenter
    //   22: aload_0
    //   23: getfield 41	com/urbanairship/location/UALocationManager:nextSingleLocationRequestId	I
    //   26: istore_2
    //   27: aload_0
    //   28: iload_2
    //   29: iconst_1
    //   30: iadd
    //   31: putfield 41	com/urbanairship/location/UALocationManager:nextSingleLocationRequestId	I
    //   34: new 181	com/urbanairship/location/UALocationManager$SingleLocationRequest
    //   37: dup
    //   38: aload_0
    //   39: iload_2
    //   40: aload_1
    //   41: invokespecial 302	com/urbanairship/location/UALocationManager$SingleLocationRequest:<init>	(Lcom/urbanairship/location/UALocationManager;ILcom/urbanairship/location/LocationRequestOptions;)V
    //   44: astore_1
    //   45: aload_0
    //   46: getfield 46	com/urbanairship/location/UALocationManager:singleLocationRequests	Landroid/util/SparseArray;
    //   49: iload_2
    //   50: aload_1
    //   51: invokevirtual 306	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   54: aload_3
    //   55: monitorexit
    //   56: aload_0
    //   57: monitorenter
    //   58: aload_0
    //   59: getfield 127	com/urbanairship/location/UALocationManager:isBound	Z
    //   62: ifne +16 -> 78
    //   65: aload_0
    //   66: invokespecial 135	com/urbanairship/location/UALocationManager:bindService	()V
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: areturn
    //   73: astore_1
    //   74: aload_3
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    //   78: aload_1
    //   79: invokevirtual 184	com/urbanairship/location/UALocationManager$SingleLocationRequest:sendLocationRequest	()V
    //   82: goto -13 -> 69
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	UALocationManager
    //   0	90	1	paramLocationRequestOptions	LocationRequestOptions
    //   26	24	2	i	int
    //   19	56	3	localSparseArray	SparseArray
    // Exception table:
    //   from	to	target	type
    //   22	56	73	finally
    //   74	76	73	finally
    //   58	69	85	finally
    //   69	71	85	finally
    //   78	82	85	finally
    //   86	88	85	finally
  }
  
  public void setBackgroundLocationAllowed(boolean paramBoolean)
  {
    preferences.setBackgroundLocationAllowed(paramBoolean);
  }
  
  public void setLocationRequestOptions(LocationRequestOptions paramLocationRequestOptions)
  {
    preferences.setLocationRequestOptions(paramLocationRequestOptions);
  }
  
  public void setLocationUpdatesEnabled(boolean paramBoolean)
  {
    preferences.setLocationUpdatesEnabled(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */