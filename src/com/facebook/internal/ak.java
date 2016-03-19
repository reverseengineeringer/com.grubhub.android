package com.facebook.internal;

import android.os.Bundle;
import com.facebook.ad;
import com.facebook.m;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;

public final class ak
{
  public static final Collection<String> a = al.a(new String[] { "service_disabled", "AndroidAuthKillSwitchException" });
  public static final Collection<String> b = al.a(new String[] { "access_denied", "OAuthAccessDeniedException" });
  private static final String c = ak.class.getName();
  
  public static Bundle a(String paramString, int paramInt, Bundle paramBundle)
  {
    Object localObject = m.d(m.f());
    if (al.a((String)localObject)) {}
    for (;;)
    {
      return null;
      Bundle localBundle = new Bundle();
      localBundle.putString("android_key_hash", (String)localObject);
      localBundle.putString("app_id", m.i());
      localBundle.putInt("version", paramInt);
      localBundle.putString("display", "touch");
      localObject = new Bundle();
      ((Bundle)localObject).putString("action_id", paramString);
      paramString = paramBundle;
      if (paramBundle == null) {
        paramString = new Bundle();
      }
      try
      {
        paramBundle = g.a((Bundle)localObject);
        paramString = g.a(paramString);
        if ((paramBundle != null) && (paramString != null))
        {
          localBundle.putString("bridge_args", paramBundle.toString());
          localBundle.putString("method_args", paramString.toString());
          paramString = localBundle;
        }
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          ab.a(ad.DEVELOPER_ERRORS, 6, c, "Error creating Url -- " + paramString);
          paramString = null;
        }
      }
    }
    return paramString;
  }
  
  public static final String a()
  {
    return String.format("m.%s", new Object[] { m.e() });
  }
  
  public static final String b()
  {
    return String.format("https://graph.%s", new Object[] { m.e() });
  }
  
  public static final String c()
  {
    return String.format("https://graph-video.%s", new Object[] { m.e() });
  }
  
  public static final String d()
  {
    return "v2.5";
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */