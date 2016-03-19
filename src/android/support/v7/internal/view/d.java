package android.support.v7.internal.view;

import android.content.Context;
import android.support.v4.e.l;
import android.support.v7.internal.view.menu.aa;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;

public class d
  implements android.support.v7.b.b
{
  final ActionMode.Callback a;
  final Context b;
  final l<android.support.v7.b.a, c> c;
  final l<Menu, Menu> d;
  
  public d(Context paramContext, ActionMode.Callback paramCallback)
  {
    b = paramContext;
    a = paramCallback;
    c = new l();
    d = new l();
  }
  
  private Menu a(Menu paramMenu)
  {
    Menu localMenu2 = (Menu)d.get(paramMenu);
    Menu localMenu1 = localMenu2;
    if (localMenu2 == null)
    {
      localMenu1 = aa.a(b, (android.support.v4.b.a.a)paramMenu);
      d.put(paramMenu, localMenu1);
    }
    return localMenu1;
  }
  
  private ActionMode b(android.support.v7.b.a parama)
  {
    c localc = (c)c.get(parama);
    if (localc != null) {
      return localc;
    }
    localc = new c(b, parama);
    c.put(parama, localc);
    return localc;
  }
  
  public void a(android.support.v7.b.a parama)
  {
    a.onDestroyActionMode(b(parama));
  }
  
  public boolean a(android.support.v7.b.a parama, Menu paramMenu)
  {
    return a.onCreateActionMode(b(parama), a(paramMenu));
  }
  
  public boolean a(android.support.v7.b.a parama, MenuItem paramMenuItem)
  {
    return a.onActionItemClicked(b(parama), aa.a(b, (android.support.v4.b.a.b)paramMenuItem));
  }
  
  public boolean b(android.support.v7.b.a parama, Menu paramMenu)
  {
    return a.onPrepareActionMode(b(parama), a(paramMenu));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */