package com.facebook.internal;

import android.content.Context;
import com.facebook.ad;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  private static final Map<c, String> a = new HashMap() {};
  
  public static JSONObject a(c paramc, d paramd, String paramString, boolean paramBoolean, Context paramContext)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("event", a.get(paramc));
    al.a(localJSONObject, paramd, paramString, paramBoolean);
    try
    {
      al.a(localJSONObject, paramContext);
      localJSONObject.put("application_package_name", paramContext.getPackageName());
      return localJSONObject;
    }
    catch (Exception paramc)
    {
      for (;;)
      {
        ab.a(ad.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", new Object[] { paramc.toString() });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */