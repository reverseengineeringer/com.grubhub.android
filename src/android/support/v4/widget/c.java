package android.support.v4.widget;

import android.support.v4.view.bp;

class c
  implements Runnable
{
  private c(a parama) {}
  
  public void run()
  {
    if (!a.a(a)) {
      return;
    }
    if (a.b(a))
    {
      a.a(a, false);
      a.c(a).a();
    }
    b localb = a.c(a);
    if ((localb.c()) || (!a.d(a)))
    {
      a.b(a, false);
      return;
    }
    if (a.e(a))
    {
      a.c(a, false);
      a.f(a);
    }
    localb.d();
    int i = localb.g();
    int j = localb.h();
    a.a(i, j);
    bp.a(a.g(a), this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */