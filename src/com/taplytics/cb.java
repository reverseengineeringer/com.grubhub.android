package com.taplytics;

import android.util.Log;
import org.json.JSONObject;

public final class cb
  implements Runnable
{
  public cb(JSONObject paramJSONObject) {}
  
  public void run()
  {
    if (fy.e().n() != null)
    {
      fy.e().n().a().a(a);
      return;
    }
    Log.w("Taplytics", "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call.");
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */