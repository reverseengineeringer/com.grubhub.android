package com.taplytics;

import android.util.Log;
import com.taplytics.sdk.TaplyticsPushNotificationListener;

public final class bz
  implements Runnable
{
  public bz(TaplyticsPushNotificationListener paramTaplyticsPushNotificationListener) {}
  
  public void run()
  {
    if (fy.e().o() != null)
    {
      fy.e().o().b(a);
      return;
    }
    Log.w("Taplytics", "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call.");
  }
}

/* Location:
 * Qualified Name:     com.taplytics.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */