package android.support.v7.widget;

import android.content.Context;
import android.support.v7.a.b;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.u;
import android.view.View;

class f
  extends u
{
  public f(a parama, Context paramContext, i parami, View paramView, boolean paramBoolean)
  {
    super(paramContext, parami, paramView, paramBoolean, b.actionOverflowMenuStyle);
    a(8388613);
    a(g);
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    a.c(c).close();
    a.a(c, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */