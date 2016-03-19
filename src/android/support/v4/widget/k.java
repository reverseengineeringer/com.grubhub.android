package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a.b;
import android.support.v4.view.bp;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

class k
  extends android.support.v4.view.a
{
  private final Rect c = new Rect();
  
  k(DrawerLayout paramDrawerLayout) {}
  
  private void a(android.support.v4.view.a.a parama1, android.support.v4.view.a.a parama2)
  {
    Rect localRect = c;
    parama2.a(localRect);
    parama1.b(localRect);
    parama2.c(localRect);
    parama1.d(localRect);
    parama1.c(parama2.g());
    parama1.a(parama2.o());
    parama1.b(parama2.p());
    parama1.c(parama2.r());
    parama1.h(parama2.l());
    parama1.f(parama2.j());
    parama1.a(parama2.e());
    parama1.b(parama2.f());
    parama1.d(parama2.h());
    parama1.e(parama2.i());
    parama1.g(parama2.k());
    parama1.a(parama2.b());
  }
  
  private void a(android.support.v4.view.a.a parama, ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (DrawerLayout.l(localView)) {
        parama.b(localView);
      }
      i += 1;
    }
  }
  
  public void a(View paramView, android.support.v4.view.a.a parama)
  {
    if (DrawerLayout.e()) {
      super.a(paramView, parama);
    }
    for (;;)
    {
      parama.b(DrawerLayout.class.getName());
      parama.a(false);
      parama.b(false);
      parama.a(b.a);
      parama.a(b.b);
      return;
      android.support.v4.view.a.a locala = android.support.v4.view.a.a.a(parama);
      super.a(paramView, locala);
      parama.a(paramView);
      ViewParent localViewParent = bp.f(paramView);
      if ((localViewParent instanceof View)) {
        parama.c((View)localViewParent);
      }
      a(parama, locala);
      locala.s();
      a(parama, (ViewGroup)paramView);
    }
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.e()) || (DrawerLayout.l(paramView))) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public boolean b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramView = paramAccessibilityEvent.getText();
      paramAccessibilityEvent = DrawerLayout.a(b);
      if (paramAccessibilityEvent != null)
      {
        int i = b.e(paramAccessibilityEvent);
        paramAccessibilityEvent = b.a(i);
        if (paramAccessibilityEvent != null) {
          paramView.add(paramAccessibilityEvent);
        }
      }
      return true;
    }
    return super.b(paramView, paramAccessibilityEvent);
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */