package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class bv
  extends bu
{
  public void a(View paramView, Runnable paramRunnable)
  {
    cg.a(paramView, paramRunnable);
  }
  
  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    cg.a(paramView, paramRunnable, paramLong);
  }
  
  public void b(View paramView)
  {
    cg.a(paramView);
  }
  
  public int c(View paramView)
  {
    return cg.b(paramView);
  }
  
  public void c(View paramView, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 4) {
      i = 2;
    }
    cg.a(paramView, i);
  }
  
  public ViewParent f(View paramView)
  {
    return cg.c(paramView);
  }
  
  public boolean h(View paramView)
  {
    return cg.g(paramView);
  }
  
  public int k(View paramView)
  {
    return cg.d(paramView);
  }
  
  public void n(View paramView)
  {
    cg.e(paramView);
  }
  
  public boolean p(View paramView)
  {
    return cg.f(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */