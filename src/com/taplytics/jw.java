package com.taplytics;

import android.content.Context;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import org.json.JSONArray;
import org.json.JSONObject;

public class jw
  extends FrameLayout
  implements GestureDetector.OnGestureListener
{
  private long a;
  private float b;
  private float c;
  private dt d = new dt(paramContext, this);
  
  public jw(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    a = System.currentTimeMillis();
    b = paramMotionEvent.getX();
    c = paramMotionEvent.getY();
    return true;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return true;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {}
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return true;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent)
  {
    try
    {
      if (iz.a(kb.caribou)) {
        return;
      }
      if ((System.currentTimeMillis() - a < 1000L) && (jk.a(b, c, paramMotionEvent.getX(), paramMotionEvent.getY()) < 15.0F) && (fy.e().k() != null))
      {
        paramMotionEvent = fy.e().k().k();
        View localView = jk.b(b, c, gq.h().i());
        if (localView != null)
        {
          int i = 0;
          while (i < paramMotionEvent.length())
          {
            JSONObject localJSONObject = paramMotionEvent.optJSONObject(i);
            if (localView.getId() == localJSONObject.optJSONObject("initProperties").optInt("anID"))
            {
              fy.e().n().a("touchUp", localJSONObject);
              fy.e().v();
            }
            i += 1;
          }
        }
      }
      return;
    }
    catch (Exception paramMotionEvent)
    {
      ck.b("Touch Overlay Problem", paramMotionEvent);
    }
  }
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    d.a(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.jw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */