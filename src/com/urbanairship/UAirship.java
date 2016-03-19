package com.urbanairship;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import com.urbanairship.actions.ActionRegistry;
import com.urbanairship.amazon.ADMUtils;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.google.GCMUtils;
import com.urbanairship.google.PlayServicesUtils;
import com.urbanairship.js.Whitelist;
import com.urbanairship.location.UALocationManager;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.iam.InAppMessageManager;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.util.ManifestUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UAirship
{
  public static final int AMAZON_PLATFORM = 1;
  public static final int ANDROID_PLATFORM = 2;
  private static final String LIBRARY_VERSION_KEY = "com.urbanairship.application.device.LIBRARY_VERSION";
  private static final String PLATFORM_KEY = "com.urbanairship.application.device.PLATFORM";
  private static final Object airshipLock = new Object();
  static Application application;
  static volatile boolean isFlying = false;
  static volatile boolean isTakingOff = false;
  private static List<CancelableOperation> pendingAirshipRequests;
  static UAirship sharedAirship;
  ActionRegistry actionRegistry;
  AirshipConfigOptions airshipConfigOptions;
  Analytics analytics;
  ApplicationMetrics applicationMetrics;
  ChannelCapture channelCapture;
  InAppMessageManager inAppMessageManager;
  UALocationManager locationManager;
  PreferenceDataStore preferenceDataStore;
  PushManager pushManager;
  RichPushManager richPushManager;
  Whitelist whitelist;
  
  UAirship(Context paramContext, AirshipConfigOptions paramAirshipConfigOptions, PreferenceDataStore paramPreferenceDataStore)
  {
    airshipConfigOptions = paramAirshipConfigOptions;
    preferenceDataStore = paramPreferenceDataStore;
    analytics = new Analytics(paramContext, paramPreferenceDataStore, paramAirshipConfigOptions);
    applicationMetrics = new ApplicationMetrics(paramContext, paramPreferenceDataStore);
    richPushManager = new RichPushManager(paramContext, paramPreferenceDataStore);
    locationManager = new UALocationManager(paramContext, paramPreferenceDataStore);
    inAppMessageManager = new InAppMessageManager(paramPreferenceDataStore);
    pushManager = new PushManager(paramContext, paramPreferenceDataStore);
    whitelist = Whitelist.createDefaultWhitelist(paramAirshipConfigOptions);
    actionRegistry = new ActionRegistry();
    channelCapture = new ChannelCapture(paramContext, paramAirshipConfigOptions, pushManager);
  }
  
  private static void executeTakeOff(Application arg0, AirshipConfigOptions paramAirshipConfigOptions, UAirship.OnReadyCallback paramOnReadyCallback)
  {
    AirshipConfigOptions localAirshipConfigOptions = paramAirshipConfigOptions;
    if (paramAirshipConfigOptions == null) {
      localAirshipConfigOptions = AirshipConfigOptions.loadDefaultOptions(???.getApplicationContext());
    }
    if (!localAirshipConfigOptions.isValid()) {
      synchronized (airshipLock)
      {
        isTakingOff = false;
        airshipLock.notifyAll();
        Logger.error("AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above.");
        throw new IllegalArgumentException("Application configuration is invalid.");
      }
    }
    Logger.logLevel = localAirshipConfigOptions.getLoggerLevel();
    Logger.TAG = getAppName() + " - UALib";
    Logger.info("Airship taking off!");
    Logger.info("Airship log level: " + Logger.logLevel);
    Logger.info("UA Version: " + getVersion() + " / App key = " + localAirshipConfigOptions.getAppKey() + " Production = " + inProduction);
    paramAirshipConfigOptions = new PreferenceDataStore(???.getApplicationContext());
    paramAirshipConfigOptions.loadAll();
    sharedAirship = new UAirship(???.getApplicationContext(), localAirshipConfigOptions, paramAirshipConfigOptions);
    ??? = getVersion();
    String str = paramAirshipConfigOptions.getString("com.urbanairship.application.device.LIBRARY_VERSION", null);
    if ((str != null) && (!str.equals(???))) {
      Logger.info("Urban Airship library changed from " + str + " to " + ??? + ".");
    }
    paramAirshipConfigOptions.put("com.urbanairship.application.device.LIBRARY_VERSION", getVersion());
    if (!inProduction) {
      sharedAirship.validateManifest();
    }
    synchronized (airshipLock)
    {
      isFlying = true;
      isTakingOff = false;
      sharedAirship.init();
      Logger.info("Airship ready!");
      if (paramOnReadyCallback != null) {
        paramOnReadyCallback.onAirshipReady(sharedAirship);
      }
      if (pendingAirshipRequests == null) {
        break label381;
      }
      paramAirshipConfigOptions = new ArrayList(pendingAirshipRequests).iterator();
      if (paramAirshipConfigOptions.hasNext()) {
        ((Runnable)paramAirshipConfigOptions.next()).run();
      }
    }
    pendingAirshipRequests = null;
    label381:
    airshipLock.notifyAll();
  }
  
  public static int getAppIcon()
  {
    ApplicationInfo localApplicationInfo = getAppInfo();
    if (localApplicationInfo != null) {
      return icon;
    }
    return -1;
  }
  
  public static ApplicationInfo getAppInfo()
  {
    return getApplicationContext().getApplicationInfo();
  }
  
  public static String getAppName()
  {
    if (getAppInfo() != null) {
      return getPackageManager().getApplicationLabel(getAppInfo()).toString();
    }
    return null;
  }
  
  public static Context getApplicationContext()
  {
    if (application == null) {
      throw new IllegalStateException("TakeOff must be called first.");
    }
    return application.getApplicationContext();
  }
  
  public static PackageInfo getPackageInfo()
  {
    try
    {
      PackageInfo localPackageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Logger.warn("UAirship - Unable to get package info.", localNameNotFoundException);
    }
    return null;
  }
  
  public static PackageManager getPackageManager()
  {
    return getApplicationContext().getPackageManager();
  }
  
  public static String getPackageName()
  {
    return getApplicationContext().getPackageName();
  }
  
  public static String getUrbanAirshipPermission()
  {
    return getApplicationContext().getPackageName() + ".permission.UA_DATA";
  }
  
  public static String getVersion()
  {
    return "6.2.3";
  }
  
  private void init()
  {
    richPushManager.init();
    pushManager.init();
    locationManager.init();
    inAppMessageManager.init();
    channelCapture.init();
    actionRegistry.registerDefaultActions();
  }
  
  public static boolean isFlying()
  {
    return isFlying;
  }
  
  public static boolean isTakingOff()
  {
    return isTakingOff;
  }
  
  static void land()
  {
    synchronized (airshipLock)
    {
      if ((!isTakingOff) && (!isFlying)) {
        return;
      }
      if (Build.VERSION.SDK_INT >= 14)
      {
        Analytics.unregisterLifeCycleCallbacks();
        InAppMessageManager.unregisterLifeCycleCallbacks();
      }
      shared().tearDown();
      isFlying = false;
      isTakingOff = false;
      sharedAirship = null;
      application = null;
      return;
    }
  }
  
  public static Cancelable shared(UAirship.OnReadyCallback paramOnReadyCallback)
  {
    return shared(paramOnReadyCallback, null);
  }
  
  public static Cancelable shared(UAirship.OnReadyCallback arg0, Looper paramLooper)
  {
    paramLooper = new CancelableOperation(paramLooper)
    {
      public void onRun()
      {
        if (paramOnReadyCallback != null) {
          paramOnReadyCallback.onAirshipReady(UAirship.shared());
        }
      }
    };
    synchronized (airshipLock)
    {
      if (isFlying)
      {
        paramLooper.run();
        return paramLooper;
      }
      if (pendingAirshipRequests == null) {
        pendingAirshipRequests = new ArrayList();
      }
      pendingAirshipRequests.add(paramLooper);
    }
  }
  
  public static UAirship shared()
  {
    synchronized (airshipLock)
    {
      if (isFlying)
      {
        UAirship localUAirship1 = sharedAirship;
        return localUAirship1;
      }
      if (!isTakingOff) {
        throw new IllegalStateException("Take off must be called before shared()");
      }
    }
    int i = 0;
    try
    {
      for (;;)
      {
        boolean bool = isFlying;
        if (bool) {
          break;
        }
        try
        {
          airshipLock.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          i = 1;
        }
      }
      UAirship localUAirship2 = sharedAirship;
      if (i != 0) {
        Thread.currentThread().interrupt();
      }
      return localUAirship2;
    }
    finally
    {
      if (i != 0) {
        Thread.currentThread().interrupt();
      }
    }
  }
  
  public static void takeOff(Application paramApplication)
  {
    takeOff(paramApplication, null, null);
  }
  
  public static void takeOff(Application paramApplication, AirshipConfigOptions paramAirshipConfigOptions)
  {
    takeOff(paramApplication, paramAirshipConfigOptions, null);
  }
  
  /* Error */
  public static void takeOff(Application paramApplication, final AirshipConfigOptions paramAirshipConfigOptions, final UAirship.OnReadyCallback paramOnReadyCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +14 -> 15
    //   4: new 161	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc_w 413
    //   11: invokespecial 165	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: invokestatic 419	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   18: ifnull +65 -> 83
    //   21: invokestatic 422	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   24: invokestatic 419	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   27: if_acmpne +56 -> 83
    //   30: getstatic 363	android/os/Build$VERSION:SDK_INT	I
    //   33: bipush 16
    //   35: if_icmpge +10 -> 45
    //   38: ldc_w 424
    //   41: invokestatic 430	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   44: pop
    //   45: getstatic 61	com/urbanairship/UAirship:airshipLock	Ljava/lang/Object;
    //   48: astore_3
    //   49: aload_3
    //   50: monitorenter
    //   51: getstatic 63	com/urbanairship/UAirship:isFlying	Z
    //   54: ifne +9 -> 63
    //   57: getstatic 65	com/urbanairship/UAirship:isTakingOff	Z
    //   60: ifeq +32 -> 92
    //   63: ldc_w 432
    //   66: invokestatic 159	com/urbanairship/Logger:error	(Ljava/lang/String;)V
    //   69: aload_3
    //   70: monitorexit
    //   71: return
    //   72: astore_3
    //   73: ldc_w 434
    //   76: aload_3
    //   77: invokestatic 436	com/urbanairship/Logger:error	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   80: goto -35 -> 45
    //   83: ldc_w 438
    //   86: invokestatic 159	com/urbanairship/Logger:error	(Ljava/lang/String;)V
    //   89: goto -44 -> 45
    //   92: ldc -63
    //   94: invokestatic 196	com/urbanairship/Logger:info	(Ljava/lang/String;)V
    //   97: iconst_1
    //   98: putstatic 65	com/urbanairship/UAirship:isTakingOff	Z
    //   101: aload_0
    //   102: putstatic 323	com/urbanairship/UAirship:application	Landroid/app/Application;
    //   105: invokestatic 441	com/urbanairship/UrbanAirshipProvider:init	()V
    //   108: getstatic 363	android/os/Build$VERSION:SDK_INT	I
    //   111: bipush 14
    //   113: if_icmplt +11 -> 124
    //   116: aload_0
    //   117: invokestatic 444	com/urbanairship/analytics/Analytics:registerLifeCycleCallbacks	(Landroid/app/Application;)V
    //   120: aload_0
    //   121: invokestatic 445	com/urbanairship/push/iam/InAppMessageManager:registerLifeCycleCallbacks	(Landroid/app/Application;)V
    //   124: new 397	java/lang/Thread
    //   127: dup
    //   128: new 8	com/urbanairship/UAirship$2
    //   131: dup
    //   132: aload_0
    //   133: aload_1
    //   134: aload_2
    //   135: invokespecial 447	com/urbanairship/UAirship$2:<init>	(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    //   138: invokespecial 450	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   141: invokevirtual 453	java/lang/Thread:start	()V
    //   144: aload_3
    //   145: monitorexit
    //   146: return
    //   147: astore_0
    //   148: aload_3
    //   149: monitorexit
    //   150: aload_0
    //   151: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	paramApplication	Application
    //   0	152	1	paramAirshipConfigOptions	AirshipConfigOptions
    //   0	152	2	paramOnReadyCallback	UAirship.OnReadyCallback
    //   72	77	3	localClassNotFoundException	ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   38	45	72	java/lang/ClassNotFoundException
    //   51	63	147	finally
    //   63	71	147	finally
    //   92	124	147	finally
    //   124	146	147	finally
    //   148	150	147	finally
  }
  
  public static void takeOff(Application paramApplication, UAirship.OnReadyCallback paramOnReadyCallback)
  {
    takeOff(paramApplication, null, paramOnReadyCallback);
  }
  
  private void tearDown()
  {
    richPushManager.tearDown();
    pushManager.tearDown();
    locationManager.tearDown();
    inAppMessageManager.tearDown();
    channelCapture.tearDown();
  }
  
  private void validateManifest()
  {
    ManifestUtils.validateManifest(airshipConfigOptions);
    switch (sharedAirship.getPlatformType())
    {
    default: 
      return;
    case 2: 
      if (airshipConfigOptions.isTransportAllowed("GCM"))
      {
        GCMUtils.validateManifest(airshipConfigOptions);
        return;
      }
      Logger.error("Android platform detected but GCM transport is disabled. The device will not be able to receive push notifications.");
      return;
    }
    if (airshipConfigOptions.isTransportAllowed("ADM"))
    {
      ADMUtils.validateManifest();
      return;
    }
    Logger.error("Amazon platform detected but ADM transport is disabled. The device will not be able to receive push notifications.");
  }
  
  public ActionRegistry getActionRegistry()
  {
    return actionRegistry;
  }
  
  public AirshipConfigOptions getAirshipConfigOptions()
  {
    return airshipConfigOptions;
  }
  
  public Analytics getAnalytics()
  {
    return analytics;
  }
  
  public ApplicationMetrics getApplicationMetrics()
  {
    return applicationMetrics;
  }
  
  public InAppMessageManager getInAppMessageManager()
  {
    return inAppMessageManager;
  }
  
  public UALocationManager getLocationManager()
  {
    return locationManager;
  }
  
  public int getPlatformType()
  {
    int i = 1;
    int j = 1;
    switch (preferenceDataStore.getInt("com.urbanairship.application.device.PLATFORM", -1))
    {
    default: 
      if (ADMUtils.isADMAvailable())
      {
        Logger.info("ADM available. Setting platform to Amazon.");
        i = j;
      }
      break;
    }
    for (;;)
    {
      preferenceDataStore.put("com.urbanairship.application.device.PLATFORM", i);
      return i;
      return 2;
      if (PlayServicesUtils.isGooglePlayStoreAvailable())
      {
        Logger.info("Google Play Store available. Setting platform to Android.");
        i = 2;
      }
      else if ("amazon".equalsIgnoreCase(Build.MANUFACTURER))
      {
        Logger.info("Build.MANUFACTURER is AMAZON. Setting platform to Amazon.");
        i = j;
      }
      else
      {
        Logger.info("Defaulting platform to Android.");
        i = 2;
      }
    }
  }
  
  public PushManager getPushManager()
  {
    return pushManager;
  }
  
  public RichPushManager getRichPushManager()
  {
    return richPushManager;
  }
  
  public Whitelist getWhitelist()
  {
    return whitelist;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UAirship
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */