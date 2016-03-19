package com.taplytics;

import android.util.Log;
import org.json.JSONObject;

public final class be
  implements Runnable
{
  public be(String paramString, Number paramNumber, JSONObject paramJSONObject) {}
  
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
 * Qualified Name:     com.taplytics.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */