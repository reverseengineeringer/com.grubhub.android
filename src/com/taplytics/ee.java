package com.taplytics;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

public class ee
{
  static final eh a = new ef();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new eg();
      return;
    }
  }
  
  public static float a(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.a(paramVelocityTracker, paramInt);
  }
  
  public static float b(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.b(paramVelocityTracker, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */