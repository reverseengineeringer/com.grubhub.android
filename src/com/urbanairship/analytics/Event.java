package com.urbanairship.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class Event
{
  static final String CARRIER_KEY = "carrier";
  static final String CONNECTION_SUBTYPE_KEY = "connection_subtype";
  static final String CONNECTION_TYPE_KEY = "connection_type";
  static final String DATA_KEY = "data";
  static final String DAYLIGHT_SAVINGS_KEY = "daylight_savings";
  static final String EVENT_ID_KEY = "event_id";
  static final String LAST_SEND_ID_KEY = "last_send_id";
  static final String LIB_VERSION_KEY = "lib_version";
  static final String OS_VERSION_KEY = "os_version";
  static final String PACKAGE_VERSION_KEY = "package_version";
  static final String PUSH_ID_KEY = "push_id";
  static final String SESSION_ID_KEY = "session_id";
  static final String TIME_KEY = "time";
  static final String TIME_ZONE_KEY = "time_zone";
  static final String TYPE_KEY = "type";
  private final String eventId = UUID.randomUUID().toString();
  private final String time;
  
  public Event()
  {
    this(System.currentTimeMillis());
  }
  
  public Event(long paramLong)
  {
    time = millisecondsToSecondsString(paramLong);
  }
  
  protected static String millisecondsToSecondsString(long paramLong)
  {
    return String.format(Locale.US, "%.3f", new Object[] { Double.valueOf(paramLong / 1000.0D) });
  }
  
  String createEventPayload(String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = getEventData();
    try
    {
      localJSONObject2 = new JSONObject(localJSONObject2.toString());
      localJSONObject2.put("session_id", paramString);
      localJSONObject1.put("type", getType());
      localJSONObject1.put("event_id", eventId);
      localJSONObject1.put("time", time);
      localJSONObject1.put("data", localJSONObject2);
      return localJSONObject1.toString();
    }
    catch (JSONException paramString)
    {
      Logger.error("Event - Error constructing JSON " + getType() + " representation.", paramString);
    }
    return null;
  }
  
  protected String getCarrier()
  {
    return ((TelephonyManager)UAirship.getApplicationContext().getSystemService("phone")).getNetworkOperatorName();
  }
  
  public String getConnectionSubType()
  {
    Object localObject = (ConnectivityManager)UAirship.getApplicationContext().getSystemService("connectivity");
    if (localObject != null)
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject != null) {
        return ((NetworkInfo)localObject).getSubtypeName();
      }
    }
    return "";
  }
  
  public String getConnectionType()
  {
    Object localObject = (ConnectivityManager)UAirship.getApplicationContext().getSystemService("connectivity");
    if (localObject != null)
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject == null) {}
    }
    for (int i = ((NetworkInfo)localObject).getType();; i = -1)
    {
      switch (i)
      {
      default: 
        return "none";
      case 0: 
        return "cell";
      case 1: 
        return "wifi";
      }
      return "wimax";
    }
  }
  
  protected abstract JSONObject getEventData();
  
  public String getEventId()
  {
    return eventId;
  }
  
  public ArrayList<String> getNotificationTypes()
  {
    ArrayList localArrayList = new ArrayList();
    PushManager localPushManager = UAirship.shared().getPushManager();
    if (localPushManager.isPushEnabled())
    {
      if (localPushManager.isSoundEnabled()) {
        localArrayList.add("sound");
      }
      if (localPushManager.isVibrateEnabled()) {
        localArrayList.add("vibrate");
      }
    }
    return localArrayList;
  }
  
  public String getTime()
  {
    return time;
  }
  
  protected long getTimezone()
  {
    return Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000;
  }
  
  public abstract String getType();
  
  protected boolean isDaylightSavingsTime()
  {
    return Calendar.getInstance().getTimeZone().inDaylightTime(new Date());
  }
  
  public boolean isValid()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */