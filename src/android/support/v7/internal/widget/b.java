package android.support.v7.internal.widget;

import android.support.v4.view.dq;
import android.support.v4.view.ed;
import android.support.v7.widget.ActionMenuView;
import android.view.View;

public class b
  implements ed
{
  int a;
  private boolean c = false;
  
  protected b(a parama) {}
  
  public b a(dq paramdq, int paramInt)
  {
    b.i = paramdq;
    a = paramInt;
    return this;
  }
  
  public void a(View paramView)
  {
    b.setVisibility(0);
    c = false;
  }
  
  public void b(View paramView)
  {
    if (c) {}
    do
    {
      return;
      b.i = null;
      b.setVisibility(a);
    } while ((b.e == null) || (b.c == null));
    b.c.setVisibility(a);
  }
  
  public void c(View paramView)
  {
    c = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */