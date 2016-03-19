package android.support.v7.internal.view;

import android.support.v4.view.ed;
import android.support.v4.view.ee;
import android.view.View;
import java.util.ArrayList;

class h$1
  extends ee
{
  private boolean b = false;
  private int c = 0;
  
  h$1(h paramh) {}
  
  void a()
  {
    c = 0;
    b = false;
    h.b(a);
  }
  
  public void a(View paramView)
  {
    if (b) {}
    do
    {
      return;
      b = true;
    } while (h.a(a) == null);
    h.a(a).a(null);
  }
  
  public void b(View paramView)
  {
    int i = c + 1;
    c = i;
    if (i == h.c(a).size())
    {
      if (h.a(a) != null) {
        h.a(a).b(null);
      }
      a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.h.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */