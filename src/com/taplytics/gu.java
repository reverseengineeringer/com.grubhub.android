package com.taplytics;

import android.os.Handler;
import android.view.MotionEvent;
import android.widget.TextView;
import org.json.JSONArray;

class gu
  implements Runnable
{
  gu(gt paramgt, TextView paramTextView1, Handler paramHandler1, MotionEvent paramMotionEvent, TextView paramTextView2, Handler paramHandler2) {}
  
  public void run()
  {
    gq.a(f.a, true);
    gq.b(f.a, true);
    Object localObject = new gv(this);
    b.post((Runnable)localObject);
    localObject = gq.a(f.a, c.getX(), c.getY(), gq.c(f.a));
    fy.e().l().a((JSONArray)localObject, new gw(this));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */