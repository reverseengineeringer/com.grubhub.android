package com.taplytics;

import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;

class dx
  extends Handler
{
  dx(dw paramdw) {}
  
  dx(dw paramdw, Handler paramHandler)
  {
    super(paramHandler.getLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      throw new RuntimeException("Unknown message " + paramMessage);
    case 1: 
      dw.b(a).onShowPress(dw.a(a));
    }
    do
    {
      return;
      dw.c(a);
      return;
    } while (dw.d(a) == null);
    if (!dw.e(a))
    {
      dw.d(a).onSingleTapConfirmed(dw.a(a));
      return;
    }
    dw.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */