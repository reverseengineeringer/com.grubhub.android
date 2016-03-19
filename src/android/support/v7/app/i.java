package android.support.v7.app;

import android.support.v4.view.bp;
import android.support.v7.b.a;
import android.support.v7.b.b;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;

class i
  implements b
{
  private b b;
  
  public i(g paramg, b paramb)
  {
    b = paramb;
  }
  
  public void a(a parama)
  {
    b.a(parama);
    if (a.i != null)
    {
      a.a.getWindow().getDecorView().removeCallbacks(a.j);
      a.i.dismiss();
    }
    for (;;)
    {
      if (a.h != null) {
        a.h.removeAllViews();
      }
      if (a.a != null) {}
      try
      {
        a.a.b(a.g);
        a.g = null;
        return;
        if (a.h == null) {
          continue;
        }
        a.h.setVisibility(8);
        if (a.h.getParent() == null) {
          continue;
        }
        bp.n((View)a.h.getParent());
      }
      catch (AbstractMethodError parama)
      {
        for (;;) {}
      }
    }
  }
  
  public boolean a(a parama, Menu paramMenu)
  {
    return b.a(parama, paramMenu);
  }
  
  public boolean a(a parama, MenuItem paramMenuItem)
  {
    return b.a(parama, paramMenuItem);
  }
  
  public boolean b(a parama, Menu paramMenu)
  {
    return b.b(parama, paramMenu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */