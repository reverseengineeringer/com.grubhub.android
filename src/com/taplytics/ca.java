package com.taplytics;

import android.util.Log;
import com.taplytics.sdk.TaplyticsPushNotificationIntentListener;

public final class ca
  implements Runnable
{
  public ca(TaplyticsPushNotificationIntentListener paramTaplyticsPushNotificationIntentListener) {}
  
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
 * Qualified Name:     com.taplytics.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */