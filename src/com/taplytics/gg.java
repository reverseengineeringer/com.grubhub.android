package com.taplytics;

import android.util.Log;
import org.json.JSONObject;

class gg
  implements ik
{
  gg(fy paramfy) {}
  
  public void a(Exception paramException)
  {
    ck.b("git tag error", paramException);
  }
  
  public void a(JSONObject paramJSONObject)
  {
    if (ck.c()) {
      ck.a("Got tag response: " + paramJSONObject);
    }
    if ((paramJSONObject != null) && (paramJSONObject != JSONObject.NULL) && (paramJSONObject.length() > 0) && (paramJSONObject.has("tag_name")))
    {
      fy.a(a, fy.a(a, new ep(paramJSONObject.optString("tag_name"))));
      if (fy.d(a)) {
        Log.d(ck.b(), "A Taplytics SDK update is available. Please update to ensure best functionality");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */