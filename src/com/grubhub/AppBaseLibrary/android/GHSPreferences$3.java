package com.grubhub.AppBaseLibrary.android;

import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

class GHSPreferences$3
  implements GestureDetector.OnGestureListener
{
  GHSPreferences$3(GHSPreferences paramGHSPreferences) {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i;
    int j;
    label14:
    int k;
    if (paramMotionEvent1 != null)
    {
      i = 1;
      if (paramMotionEvent2 == null) {
        break label84;
      }
      j = 1;
      if (Math.abs(paramFloat1) <= 900.0F) {
        break label90;
      }
      k = 1;
    }
    for (;;)
    {
      if ((k & i & j) != 0)
      {
        paramFloat1 = paramMotionEvent1.getX();
        paramFloat2 = paramMotionEvent2.getX();
        if (paramFloat2 - paramFloat1 > 200.0F)
        {
          a.finish();
          a.overridePendingTransition(0, 2130968616);
          return true;
          i = 0;
          break;
          label84:
          j = 0;
          break label14;
          label90:
          k = 0;
          continue;
        }
        if (paramFloat1 - paramFloat2 > 200.0F)
        {
          a.finish();
          a.overridePendingTransition(0, 2130968615);
          return true;
        }
      }
    }
    return false;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {}
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSPreferences.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */