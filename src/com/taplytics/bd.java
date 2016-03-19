package com.taplytics;

import android.util.Log;
import org.json.JSONObject;

public final class bd
  implements Runnable
{
  public bd(String paramString, Number paramNumber, JSONObject paramJSONObject) {}
  
  public void run()
  {
    if (fy.e().n() != null)
    {
      fy.e().n().a(a, b, c);
      return;
    }
    Log.w("Taplytics", "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call.");
  }
}

/* Location:
 * Qualified Name:     com.taplytics.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */