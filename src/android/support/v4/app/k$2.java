package android.support.v4.app;

import android.support.v4.e.a;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;

class k$2
  implements ViewTreeObserver.OnPreDrawListener
{
  k$2(k paramk, View paramView, Object paramObject, ArrayList paramArrayList, m paramm, boolean paramBoolean, Fragment paramFragment1, Fragment paramFragment2) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null)
    {
      ah.a(b, c);
      c.clear();
      a locala = k.a(h, d, e, f);
      ah.a(b, d.d, locala, c);
      k.a(h, locala, d);
      k.a(h, d, f, g, e, locala);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.k.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */