package com.taplytics;

import com.taplytics.sdk.Taplytics;
import com.taplytics.sdk.TaplyticsPushOpenedListener;

public final class bo
  implements Runnable
{
  public bo(TaplyticsPushOpenedListener paramTaplyticsPushOpenedListener) {}
  
  public void run()
  {
    fy.e().o().a(a);
    Taplytics.setPushNotificationOpenedListener(a);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */