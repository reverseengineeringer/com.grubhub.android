package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class an
{
  Object a;
  ao b;
  
  private an(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      b = new ar();
    }
    for (;;)
    {
      a = b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        b = new aq();
      } else {
        b = new ap();
      }
    }
  }
  
  an(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static an a(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public static an a(Context paramContext, Interpolator paramInterpolator)
  {
    return new an(paramContext, paramInterpolator);
  }
  
  public int a()
  {
    return b.a(a);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public int b()
  {
    return b.b(a);
  }
  
  public int c()
  {
    return b.e(a);
  }
  
  public int d()
  {
    return b.f(a);
  }
  
  public boolean e()
  {
    return b.c(a);
  }
  
  public void f()
  {
    b.d(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */