package com.urbanairship.analytics;

import android.location.Location;
import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class LocationEvent
  extends Event
{
  static final String FOREGROUND_KEY = "foreground";
  static final String H_ACCURACY_KEY = "h_accuracy";
  static final String LATITUDE_KEY = "lat";
  static final String LONGITUDE_KEY = "long";
  static final String PROVIDER_KEY = "provider";
  static final String REQUESTED_ACCURACY_KEY = "requested_accuracy";
  static final String TYPE = "location";
  static final String UPDATE_DISTANCE_KEY = "update_dist";
  static final String UPDATE_TYPE_KEY = "update_type";
  static final String V_ACCURACY_KEY = "v_accuracy";
  private final String accuracy;
  private final String foreground;
  private final String latitude;
  private final String longitude;
  private final String provider;
  private final String requestedAccuracy;
  private final String updateDistance;
  private final LocationEvent.UpdateType updateType;
  
  public LocationEvent(Location paramLocation, LocationEvent.UpdateType paramUpdateType, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    latitude = String.format(Locale.US, "%.6f", new Object[] { Double.valueOf(paramLocation.getLatitude()) });
    longitude = String.format(Locale.US, "%.6f", new Object[] { Double.valueOf(paramLocation.getLongitude()) });
    String str;
    if (UAStringUtil.isEmpty(paramLocation.getProvider()))
    {
      str = "UNKNOWN";
      provider = str;
      accuracy = String.valueOf(paramLocation.getAccuracy());
      if (paramInt1 < 0) {
        break label145;
      }
      paramLocation = String.valueOf(paramInt1);
      label96:
      requestedAccuracy = paramLocation;
      if (paramInt2 < 0) {
        break label151;
      }
      paramLocation = String.valueOf(paramInt2);
      label112:
      updateDistance = paramLocation;
      if (!paramBoolean) {
        break label157;
      }
    }
    label145:
    label151:
    label157:
    for (paramLocation = "true";; paramLocation = "false")
    {
      foreground = paramLocation;
      updateType = paramUpdateType;
      return;
      str = paramLocation.getProvider();
      break;
      paramLocation = "NONE";
      break label96;
      paramLocation = "NONE";
      break label112;
    }
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("lat", latitude);
      localJSONObject.put("long", longitude);
      localJSONObject.put("requested_accuracy", requestedAccuracy);
      localJSONObject.put("update_type", updateType.toString());
      localJSONObject.put("provider", provider);
      localJSONObject.put("h_accuracy", accuracy);
      localJSONObject.put("v_accuracy", "NONE");
      localJSONObject.put("foreground", foreground);
      localJSONObject.put("update_dist", updateDistance);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("LocationEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public String getType()
  {
    return "location";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.LocationEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */