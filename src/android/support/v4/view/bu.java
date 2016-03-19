package android.support.v4.view;

import android.view.View;
import java.util.WeakHashMap;

class bu
  extends bt
{
  static boolean b = false;
  
  public void a(View paramView, a parama)
  {
    if (parama == null) {}
    for (parama = null;; parama = parama.a())
    {
      cf.a(paramView, parama);
      return;
    }
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return cf.a(paramView, paramInt);
  }
  
  public boolean b(View paramView, int paramInt)
  {
    return cf.b(paramView, paramInt);
  }
  
  public dq l(View paramView)
  {
    if (a == null) {
      a = new WeakHashMap();
    }
    dq localdq2 = (dq)a.get(paramView);
    dq localdq1 = localdq2;
    if (localdq2 == null)
    {
      localdq1 = new dq(paramView);
      a.put(paramView, localdq1);
    }
    return localdq1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */