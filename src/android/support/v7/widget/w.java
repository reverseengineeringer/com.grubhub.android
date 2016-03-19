package android.support.v7.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

class w
  implements View.OnTouchListener
{
  private w(o paramo) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (o.b(a) != null) && (o.b(a).isShowing()) && (j >= 0) && (j < o.b(a).getWidth()) && (k >= 0) && (k < o.b(a).getHeight())) {
      o.d(a).postDelayed(o.c(a), 250L);
    }
    for (;;)
    {
      return false;
      if (i == 1) {
        o.d(a).removeCallbacks(o.c(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */