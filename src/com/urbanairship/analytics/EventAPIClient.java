package com.urbanairship.analytics;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.http.Request;
import com.urbanairship.http.RequestFactory;
import com.urbanairship.location.UALocationManager;
import com.urbanairship.push.PushManager;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushUser;
import com.urbanairship.util.ManifestUtils;
import com.urbanairship.util.Network;
import com.urbanairship.util.UAStringUtil;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class EventAPIClient
{
  static final String ALWAYS_ALLOWED = "ALWAYS_ALLOWED";
  static final String NOT_ALLOWED = "NOT_ALLOWED";
  static final String SYSTEM_LOCATION_DISABLED = "SYSTEM_LOCATION_DISABLED";
  private final RequestFactory requestFactory;
  
  EventAPIClient()
  {
    this(new RequestFactory());
  }
  
  EventAPIClient(RequestFactory paramRequestFactory)
  {
    requestFactory = paramRequestFactory;
  }
  
  static String getLocationPermission()
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      if ((UAirship.getApplicationContext().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) || (UAirship.getApplicationContext().checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)) {
        return "ALWAYS_ALLOWED";
      }
      return "NOT_ALLOWED";
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      int i = 0;
      try
      {
        int j = Settings.Secure.getInt(UAirship.getApplicationContext().getContentResolver(), "location_mode");
        i = j;
      }
      catch (Settings.SettingNotFoundException localSettingNotFoundException)
      {
        for (;;)
        {
          Logger.debug("EventAPIClient - Settings not found.");
        }
      }
      if (i != 0) {
        return getLocationPermissionForApp();
      }
      return "SYSTEM_LOCATION_DISABLED";
    }
    if (!UAStringUtil.isEmpty(Settings.Secure.getString(UAirship.getApplicationContext().getContentResolver(), "location_providers_allowed"))) {
      return getLocationPermissionForApp();
    }
    return "SYSTEM_LOCATION_DISABLED";
  }
  
  static String getLocationPermissionForApp()
  {
    if ((ManifestUtils.isPermissionGranted("android.permission.ACCESS_COARSE_LOCATION")) || (ManifestUtils.isPermissionGranted("android.permission.ACCESS_FINE_LOCATION"))) {
      return "ALWAYS_ALLOWED";
    }
    return "NOT_ALLOWED";
  }
  
  static boolean isBluetoothEnabled()
  {
    if (!ManifestUtils.isPermissionGranted("android.permission.BLUETOOTH")) {}
    BluetoothAdapter localBluetoothAdapter;
    do
    {
      return false;
      localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    } while ((localBluetoothAdapter == null) || (!localBluetoothAdapter.isEnabled()));
    return true;
  }
  
  EventResponse sendEvents(Collection<String> paramCollection)
  {
    if (paramCollection.size() == 0) {
      Logger.verbose("EventAPIClient - No events to send.");
    }
    for (;;)
    {
      return null;
      if (!Network.isConnected())
      {
        Logger.verbose("EventAPIClient - No network connectivity available. Unable to send events.");
        return null;
      }
      Object localObject1 = new JSONArray();
      Object localObject3 = paramCollection.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        String str1 = (String)((Iterator)localObject3).next();
        try
        {
          ((JSONArray)localObject1).put(new JSONObject(str1));
        }
        catch (JSONException localJSONException)
        {
          Logger.error("EventAPIClient - Invalid eventPayload.", localJSONException);
        }
      }
      String str2 = ((JSONArray)localObject1).toString();
      localObject3 = sharedgetAirshipConfigOptionsanalyticsServer + "warp9/";
      try
      {
        localObject1 = new URL((String)localObject3);
        if (UAirship.shared().getPlatformType() == 1)
        {
          localObject3 = "amazon";
          double d = System.currentTimeMillis() / 1000.0D;
          AirshipConfigOptions localAirshipConfigOptions = UAirship.shared().getAirshipConfigOptions();
          localObject1 = requestFactory.createRequest("POST", (URL)localObject1).setRequestBody(str2, "application/json").setCompressRequestBody(true).setHeader("X-UA-Device-Family", (String)localObject3).setHeader("X-UA-Sent-At", String.format(Locale.US, "%.3f", new Object[] { Double.valueOf(d) })).setHeader("X-UA-Package-Name", UAirship.getPackageName()).setHeader("X-UA-Package-Version", getPackageInfoversionName).setHeader("X-UA-App-Key", localAirshipConfigOptions.getAppKey()).setHeader("X-UA-In-Production", Boolean.toString(inProduction)).setHeader("X-UA-Device-Model", Build.MODEL).setHeader("X-UA-OS-Version", Build.VERSION.RELEASE).setHeader("X-UA-Lib-Version", UAirship.getVersion()).setHeader("X-UA-Timezone", TimeZone.getDefault().getID()).setHeader("X-UA-Channel-Opted-In", Boolean.toString(UAirship.shared().getPushManager().isOptIn()));
          if ((!UAirship.shared().getPushManager().isPushEnabled()) || (!UAirship.shared().getPushManager().isPushAvailable())) {
            break label670;
          }
          bool = true;
          localObject1 = ((Request)localObject1).setHeader("X-UA-Channel-Background-Enabled", Boolean.toString(bool)).setHeader("X-UA-Location-Permission", getLocationPermission()).setHeader("X-UA-Location-Service-Enabled", Boolean.toString(UAirship.shared().getLocationManager().isLocationUpdatesEnabled())).setHeader("X-UA-Bluetooth-Status", Boolean.toString(isBluetoothEnabled())).setHeader("X-UA-User-ID", UAirship.shared().getRichPushManager().getRichPushUser().getId());
          localObject3 = Locale.getDefault();
          if (!UAStringUtil.isEmpty(((Locale)localObject3).getLanguage()))
          {
            ((Request)localObject1).setHeader("X-UA-Locale-Language", ((Locale)localObject3).getLanguage());
            if (!UAStringUtil.isEmpty(((Locale)localObject3).getCountry())) {
              ((Request)localObject1).setHeader("X-UA-Locale-Country", ((Locale)localObject3).getCountry());
            }
            if (!UAStringUtil.isEmpty(((Locale)localObject3).getVariant())) {
              ((Request)localObject1).setHeader("X-UA-Locale-Variant", ((Locale)localObject3).getVariant());
            }
          }
          localObject3 = UAirship.shared().getPushManager().getChannelId();
          if (!UAStringUtil.isEmpty((String)localObject3))
          {
            ((Request)localObject1).setHeader("X-UA-Channel-ID", (String)localObject3);
            ((Request)localObject1).setHeader("X-UA-Push-Address", (String)localObject3);
          }
          Logger.debug("EventAPIClient - Sending analytic events. Request:  " + localObject1 + " Events: " + paramCollection);
          paramCollection = ((Request)localObject1).execute();
          Logger.debug("EventAPIClient - Analytic event send response: " + paramCollection);
          if (paramCollection == null) {
            continue;
          }
          return new EventResponse(paramCollection);
        }
      }
      catch (MalformedURLException localMalformedURLException)
      {
        for (;;)
        {
          Logger.error("EventAPIClient - Invalid analyticsServer: " + (String)localObject3, localMalformedURLException);
          Object localObject2 = null;
          continue;
          localObject3 = "android";
          continue;
          label670:
          boolean bool = false;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.EventAPIClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */