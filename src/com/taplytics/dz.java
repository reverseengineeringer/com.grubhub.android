package com.taplytics;

import android.os.Build.VERSION;
import android.view.MotionEvent;

public class dz
{
  static final ec a = new ea();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      a = new eb();
      return;
    }
  }
  
  public static int a(MotionEvent paramMotionEvent)
  {
    return (paramMotionEvent.getAction() & 0xFF00) >> 8;
  }
  
  public static int a(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.a(paramMotionEvent, paramInt);
  }
  
  public static float b(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.b(paramMotionEvent, paramInt);
  }
  
  public static int b(MotionEvent paramMotionEvent)
  {
    return a.a(paramMotionEvent);
  }
  
  public static float c(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.c(paramMotionEvent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */