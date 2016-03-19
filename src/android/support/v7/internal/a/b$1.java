package android.support.v7.internal.a;

import android.support.v4.view.bp;
import android.support.v4.view.ee;
import android.support.v7.internal.widget.ActionBarContainer;
import android.view.View;

class b$1
  extends ee
{
  b$1(b paramb) {}
  
  public void b(View paramView)
  {
    if ((b.a(a)) && (b.b(a) != null))
    {
      bp.b(b.b(a), 0.0F);
      bp.b(b.c(a), 0.0F);
    }
    if ((b.d(a) != null) && (b.e(a) == 1)) {
      b.d(a).setVisibility(8);
    }
    b.c(a).setVisibility(8);
    b.c(a).setTransitioning(false);
    b.a(a, null);
    a.e();
    if (b.f(a) != null) {
      bp.n(b.f(a));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.a.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */