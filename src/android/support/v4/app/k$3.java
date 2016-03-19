package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class k$3
  implements ViewTreeObserver.OnPreDrawListener
{
  k$3(k paramk, View paramView, m paramm, int paramInt, Object paramObject) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    k.a(e, b, c, d);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.k.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */