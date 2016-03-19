package com.taplytics;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

public class dt
{
  private final du a;
  
  public dt(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, null);
  }
  
  public dt(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      a = new dy(paramContext, paramOnGestureListener, paramHandler);
      return;
    }
    a = new dw(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return a.a(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */