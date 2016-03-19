package android.support.v7.app;

import android.support.v7.internal.a.a;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.x;

final class l
  implements x
{
  private l(g paramg) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    i locali = parami.p();
    if (locali != parami) {}
    for (int i = 1;; i = 0)
    {
      g localg = a;
      if (i != 0) {
        parami = locali;
      }
      parami = g.a(localg, parami);
      if (parami != null)
      {
        if (i == 0) {
          break;
        }
        g.a(a, a, parami, locali);
        g.a(a, parami, true);
      }
      return;
    }
    a.a.closeOptionsMenu();
    g.a(a, parami, paramBoolean);
  }
  
  public boolean a(i parami)
  {
    if ((parami == null) && (a.b))
    {
      a locala = a.m();
      if ((locala != null) && (!a.o())) {
        locala.c(8, parami);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */