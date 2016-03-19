package com.taplytics;

import android.view.MotionEvent;

class ea
  implements ec
{
  public int a(MotionEvent paramMotionEvent)
  {
    return 1;
  }
  
  public int a(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
  }
  
  public float b(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0) {
      return paramMotionEvent.getX();
    }
    throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
  }
  
  public float c(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0) {
      return paramMotionEvent.getY();
    }
    throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */