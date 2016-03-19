package com.taplytics;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

class dy
  implements du
{
  private final GestureDetector a;
  
  public dy(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    a = new GestureDetector(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return a.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */