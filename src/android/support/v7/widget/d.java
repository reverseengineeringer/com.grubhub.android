package android.support.v7.widget;

import android.support.v7.internal.view.menu.i;
import android.view.View;

class d
  implements Runnable
{
  private f b;
  
  public d(a parama, f paramf)
  {
    b = paramf;
  }
  
  public void run()
  {
    a.f(a).f();
    View localView = (View)a.g(a);
    if ((localView != null) && (localView.getWindowToken() != null) && (b.d())) {
      a.a(a, b);
    }
    a.a(a, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */