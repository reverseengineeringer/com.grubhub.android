package android.support.v7.app;

import android.support.v7.internal.a.a;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

class e$1
  implements a
{
  e$1(e parame) {}
  
  public View a(int paramInt)
  {
    return a.a.onCreatePanelView(paramInt);
  }
  
  public boolean a(int paramInt, Menu paramMenu)
  {
    return a.a.a(paramInt, paramMenu);
  }
  
  public boolean a(int paramInt, MenuItem paramMenuItem)
  {
    return a.a.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  public boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    return a.a.a(paramInt, paramView, paramMenu);
  }
  
  public void b(int paramInt, Menu paramMenu)
  {
    a.a.onPanelClosed(paramInt, paramMenu);
  }
  
  public boolean c(int paramInt, Menu paramMenu)
  {
    return a.a.onMenuOpened(paramInt, paramMenu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */