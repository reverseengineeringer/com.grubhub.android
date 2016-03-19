package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.y;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class dc
  extends a
{
  dc(ViewPager paramViewPager) {}
  
  private boolean b()
  {
    return (ViewPager.a(b) != null) && (ViewPager.a(b).b() > 1);
  }
  
  public void a(View paramView, android.support.v4.view.a.a parama)
  {
    super.a(paramView, parama);
    parama.b(ViewPager.class.getName());
    parama.i(b());
    if (b.canScrollHorizontally(1)) {
      parama.a(4096);
    }
    if (b.canScrollHorizontally(-1)) {
      parama.a(8192);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if (b.canScrollHorizontally(1))
      {
        b.setCurrentItem(ViewPager.b(b) + 1);
        return true;
      }
      return false;
    }
    if (b.canScrollHorizontally(-1))
    {
      b.setCurrentItem(ViewPager.b(b) - 1);
      return true;
    }
    return false;
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = y.a();
    paramView.a(b());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.a(b) != null))
    {
      paramView.a(ViewPager.a(b).b());
      paramView.b(ViewPager.b(b));
      paramView.c(ViewPager.b(b));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */