package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class dt
  extends dr
{
  WeakHashMap<View, Integer> b = null;
  
  public void a(dq paramdq, View paramView)
  {
    ea.a(paramView);
  }
  
  public void a(dq paramdq, View paramView, float paramFloat)
  {
    ea.a(paramView, paramFloat);
  }
  
  public void a(dq paramdq, View paramView, long paramLong)
  {
    ea.a(paramView, paramLong);
  }
  
  public void a(dq paramdq, View paramView, ed paramed)
  {
    paramView.setTag(2113929216, paramed);
    ea.a(paramView, new du(paramdq));
  }
  
  public void a(dq paramdq, View paramView, Interpolator paramInterpolator)
  {
    ea.a(paramView, paramInterpolator);
  }
  
  public void b(dq paramdq, View paramView)
  {
    ea.b(paramView);
  }
  
  public void b(dq paramdq, View paramView, float paramFloat)
  {
    ea.b(paramView, paramFloat);
  }
  
  public void c(dq paramdq, View paramView, float paramFloat)
  {
    ea.c(paramView, paramFloat);
  }
  
  public void d(dq paramdq, View paramView, float paramFloat)
  {
    ea.d(paramView, paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */