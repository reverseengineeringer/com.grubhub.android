package com.facebook.a;

import android.os.Bundle;
import com.facebook.ad;
import com.facebook.h;
import com.facebook.internal.ab;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class d
  implements Serializable
{
  private static final HashSet<String> c = new HashSet();
  private static final long serialVersionUID = 1L;
  private JSONObject a;
  private boolean b;
  private String d;
  
  public d(String paramString1, String paramString2, Double paramDouble, Bundle paramBundle, boolean paramBoolean)
  {
    try
    {
      a(paramString2);
      d = paramString2;
      b = paramBoolean;
      a = new JSONObject();
      a.put("_eventName", paramString2);
      a.put("_logTime", System.currentTimeMillis() / 1000L);
      a.put("_ui", paramString1);
      if (paramDouble != null) {
        a.put("_valueToSum", paramDouble.doubleValue());
      }
      if (b) {
        a.put("_implicitlyLogged", "1");
      }
      if (paramBundle == null) {
        break label265;
      }
      paramString1 = paramBundle.keySet().iterator();
    }
    catch (JSONException paramString1)
    {
      for (;;)
      {
        ab.a(ad.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", new Object[] { paramString1.toString() });
        a = null;
        return;
        a.put(paramString2, paramDouble.toString());
      }
    }
    catch (h paramString1)
    {
      ab.a(ad.APP_EVENTS, "AppEvents", "Invalid app event name or parameter:", new Object[] { paramString1.toString() });
      a = null;
      return;
    }
    if (paramString1.hasNext())
    {
      paramString2 = (String)paramString1.next();
      a(paramString2);
      paramDouble = paramBundle.get(paramString2);
      if ((!(paramDouble instanceof String)) && (!(paramDouble instanceof Number))) {
        throw new h(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", new Object[] { paramDouble, paramString2 }));
      }
    }
    label265:
    while (b) {}
    ab.a(ad.APP_EVENTS, "AppEvents", "Created app event '%s'", new Object[] { a.toString() });
  }
  
  private d(String paramString, boolean paramBoolean)
    throws JSONException
  {
    a = new JSONObject(paramString);
    b = paramBoolean;
  }
  
  private void a(String paramString)
    throws h
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.length() > 40))
    {
      ??? = paramString;
      if (paramString == null) {
        ??? = "<None Provided>";
      }
      throw new h(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", new Object[] { ???, Integer.valueOf(40) }));
    }
    synchronized (c)
    {
      boolean bool = c.contains(paramString);
      if (!bool) {
        if (!paramString.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
          break label117;
        }
      }
    }
    synchronized (c)
    {
      c.add(paramString);
      return;
      paramString = finally;
      throw paramString;
    }
    label117:
    throw new h(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", new Object[] { paramString }));
  }
  
  private Object writeReplace()
  {
    return new e(a.toString(), b, null);
  }
  
  public String a()
  {
    return d;
  }
  
  public boolean b()
  {
    return b;
  }
  
  public JSONObject c()
  {
    return a;
  }
  
  public String toString()
  {
    return String.format("\"%s\", implicit: %b, json: %s", new Object[] { a.optString("_eventName"), Boolean.valueOf(b), a.toString() });
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */