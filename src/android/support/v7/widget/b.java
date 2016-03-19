package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.ac;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.u;
import android.view.MenuItem;
import android.view.View;

class b
  extends u
{
  private ac d;
  
  public b(a parama, Context paramContext, ac paramac)
  {
    super(paramContext, paramac, null, false, android.support.v7.a.b.actionOverflowMenuStyle);
    d = paramac;
    int j;
    int i;
    if (!((m)paramac.getItem()).j())
    {
      if (a.d(parama) == null)
      {
        paramContext = (View)a.e(parama);
        a(paramContext);
      }
    }
    else
    {
      a(g);
      j = paramac.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        parama = paramac.getItem(i);
        if ((parama.isVisible()) && (parama.getIcon() != null)) {
          bool1 = true;
        }
      }
      else
      {
        a(bool1);
        return;
        paramContext = a.d(parama);
        break;
      }
      i += 1;
    }
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    a.a(c, null);
    c.h = 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */