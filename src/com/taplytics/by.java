package com.taplytics;

import android.util.Log;
import com.taplytics.sdk.TaplyticsPushNotificationListener;

public final class by
  implements Runnable
{
  public by(TaplyticsPushNotificationListener paramTaplyticsPushNotificationListener) {}
  
  public void run()
  {
    if (fy.e().o() != null)
    {
      fy.e().o().a(a);
      return;
    }
    Log.w("Taplytics", "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call.");
  }
}

/* Location:
 * Qualified Name:     com.taplytics.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */