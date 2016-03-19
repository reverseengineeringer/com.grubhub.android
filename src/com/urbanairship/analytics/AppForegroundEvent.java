package com.urbanairship.analytics;

import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class AppForegroundEvent
  extends Event
{
  static final String NOTIFICATION_TYPES_KEY = "notification_types";
  static final String TYPE = "app_foreground";
  
  AppForegroundEvent(long paramLong)
  {
    super(paramLong);
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("connection_type", getConnectionType());
      String str = getConnectionSubType();
      if (!UAStringUtil.isEmpty(str)) {
        localJSONObject.put("connection_subtype", str);
      }
      localJSONObject.put("carrier", getCarrier());
      localJSONObject.put("time_zone", getTimezone());
      localJSONObject.put("daylight_savings", isDaylightSavingsTime());
      localJSONObject.put("notification_types", new JSONArray(getNotificationTypes()));
      localJSONObject.put("os_version", Build.VERSION.RELEASE);
      localJSONObject.put("lib_version", UAirship.getVersion());
      localJSONObject.put("package_version", getPackageInfoversionName);
      localJSONObject.put("push_id", UAirship.shared().getAnalytics().getConversionSendId());
      localJSONObject.put("last_send_id", UAirship.shared().getPushManager().getLastReceivedSendId());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("AppForegroundEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "app_foreground";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.AppForegroundEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */