package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class dr
  implements dz
{
  WeakHashMap<View, Runnable> a = null;
  
  private void a(View paramView)
  {
    if (a != null)
    {
      Runnable localRunnable = (Runnable)a.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
  }
  
  private void c(dq paramdq, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof ed)) {}
    for (localObject = (ed)localObject;; localObject = null)
    {
      Runnable localRunnable = dq.a(paramdq);
      paramdq = dq.b(paramdq);
      if (localRunnable != null) {
        localRunnable.run();
      }
      if (localObject != null)
      {
        ((ed)localObject).a(paramView);
        ((ed)localObject).b(paramView);
      }
      if (paramdq != null) {
        paramdq.run();
      }
      if (a != null) {
        a.remove(paramView);
      }
      return;
    }
  }
  
  private void d(dq paramdq, View paramView)
  {
    if (a != null) {}
    for (Runnable localRunnable = (Runnable)a.get(paramView);; localRunnable = null)
    {
      Object localObject = localRunnable;
      if (localRunnable == null)
      {
        localObject = new ds(this, paramdq, paramView, null);
        if (a == null) {
          a = new WeakHashMap();
        }
        a.put(paramView, localObject);
      }
      paramView.removeCallbacks((Runnable)localObject);
      paramView.post((Runnable)localObject);
      return;
    }
  }
  
  public void a(dq paramdq, View paramView)
  {
    d(paramdq, paramView);
  }
  
  public void a(dq paramdq, View paramView, float paramFloat)
  {
    d(paramdq, paramView);
  }
  
  public void a(dq paramdq, View paramView, long paramLong) {}
  
  public void a(dq paramdq, View paramView, ed paramed)
  {
    paramView.setTag(2113929216, paramed);
  }
  
  public void a(dq paramdq, View paramView, ef paramef) {}
  
  public void a(dq paramdq, View paramView, Interpolator paramInterpolator) {}
  
  public void b(dq paramdq, View paramView)
  {
    a(paramView);
    c(paramdq, paramView);
  }
  
  public void b(dq paramdq, View paramView, float paramFloat)
  {
    d(paramdq, paramView);
  }
  
  public void c(dq paramdq, View paramView, float paramFloat)
  {
    d(paramdq, paramView);
  }
  
  public void d(dq paramdq, View paramView, float paramFloat)
  {
    d(paramdq, paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */