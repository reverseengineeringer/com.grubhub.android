package android.support.v7.widget;

import android.view.View;
import android.view.ViewParent;

class r
  implements Runnable
{
  private r(q paramq) {}
  
  public void run()
  {
    q.a(a).getParent().requestDisallowInterceptTouchEvent(true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */