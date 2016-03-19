package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public class dq
{
  static final dz a = new dr();
  private WeakReference<View> b;
  private Runnable c = null;
  private Runnable d = null;
  private int e = -1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new dy();
      return;
    }
    if (i >= 19)
    {
      a = new dx();
      return;
    }
    if (i >= 18)
    {
      a = new dv();
      return;
    }
    if (i >= 16)
    {
      a = new dw();
      return;
    }
    if (i >= 14)
    {
      a = new dt();
      return;
    }
  }
  
  dq(View paramView)
  {
    b = new WeakReference(paramView);
  }
  
  public dq a(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramFloat);
    }
    return this;
  }
  
  public dq a(long paramLong)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramLong);
    }
    return this;
  }
  
  public dq a(ed paramed)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramed);
    }
    return this;
  }
  
  public dq a(ef paramef)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramef);
    }
    return this;
  }
  
  public dq a(Interpolator paramInterpolator)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramInterpolator);
    }
    return this;
  }
  
  public void a()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView);
    }
  }
  
  public dq b(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView, paramFloat);
    }
    return this;
  }
  
  public void b()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView);
    }
  }
  
  public dq c(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.c(this, localView, paramFloat);
    }
    return this;
  }
  
  public dq d(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.d(this, localView, paramFloat);
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */