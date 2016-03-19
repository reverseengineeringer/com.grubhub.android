package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

final class al$1
  implements Runnable
{
  al$1(Context paramContext, String paramString1, String paramString2) {}
  
  public void run()
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
    Object localObject1 = localSharedPreferences.getString(b, null);
    if (!al.a((String)localObject1)) {}
    try
    {
      localObject1 = new JSONObject((String)localObject1);
      if (localObject1 != null) {
        al.a(c, (JSONObject)localObject1);
      }
      localObject1 = al.f(c);
      if (localObject1 != null)
      {
        al.a(c, (JSONObject)localObject1);
        localSharedPreferences.edit().putString(b, ((JSONObject)localObject1).toString()).apply();
      }
      al.a().set(false);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        al.a("FacebookSDK", localJSONException);
        Object localObject2 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.al.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */