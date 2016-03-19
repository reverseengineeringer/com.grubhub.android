package android.support.v7.internal.view.menu;

import android.support.v7.widget.o;
import android.support.v7.widget.q;

class b
  extends q
{
  public b(ActionMenuItemView paramActionMenuItemView)
  {
    super(paramActionMenuItemView);
  }
  
  public o a()
  {
    if (ActionMenuItemView.a(a) != null) {
      return ActionMenuItemView.a(a).a();
    }
    return null;
  }
  
  protected boolean b()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (ActionMenuItemView.b(a) != null)
    {
      bool1 = bool2;
      if (ActionMenuItemView.b(a).a(ActionMenuItemView.c(a)))
      {
        o localo = a();
        bool1 = bool2;
        if (localo != null)
        {
          bool1 = bool2;
          if (localo.b()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  protected boolean c()
  {
    o localo = a();
    if (localo != null)
    {
      localo.a();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */