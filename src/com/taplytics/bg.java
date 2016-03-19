package com.taplytics;

import android.util.Log;
import com.taplytics.sdk.TaplyticsResetUserListener;

public final class bg
  implements Runnable
{
  public bg(TaplyticsResetUserListener paramTaplyticsResetUserListener) {}
  
  public void run()
  {
    if (fy.e().n() != null)
    {
      fy.e().n().a().b(a);
      return;
    }
    Log.w("Taplytics", "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call.");
  }
}

/* Location:
 * Qualified Name:     com.taplytics.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */