package android.support.v7.widget;

import android.support.v7.internal.view.menu.ac;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.x;
import android.view.MenuItem;

class g
  implements x
{
  private g(a parama) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    if ((parami instanceof ac)) {
      ((ac)parami).p().a(false);
    }
    x localx = a.a();
    if (localx != null) {
      localx.a(parami, paramBoolean);
    }
  }
  
  public boolean a(i parami)
  {
    if (parami == null) {
      return false;
    }
    a.h = ((ac)parami).getItem().getItemId();
    x localx = a.a();
    if (localx != null) {}
    for (boolean bool = localx.a(parami);; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */