package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.WeakHashMap;

class bq
  implements ca
{
  WeakHashMap<View, dq> a = null;
  
  private boolean a(bj parambj, int paramInt)
  {
    boolean bool = true;
    int i = parambj.b();
    int j = parambj.a() - parambj.c();
    if (j == 0) {
      bool = false;
    }
    do
    {
      do
      {
        return bool;
        if (paramInt >= 0) {
          break;
        }
      } while (i > 0);
      return false;
    } while (i < j - 1);
    return false;
  }
  
  private boolean b(bj parambj, int paramInt)
  {
    boolean bool = true;
    int i = parambj.e();
    int j = parambj.d() - parambj.f();
    if (j == 0) {
      bool = false;
    }
    do
    {
      do
      {
        return bool;
        if (paramInt >= 0) {
          break;
        }
      } while (i > 0);
      return false;
    } while (i < j - 1);
    return false;
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSize(paramInt1, paramInt2);
  }
  
  public int a(View paramView)
  {
    return 2;
  }
  
  long a()
  {
    return 10L;
  }
  
  public void a(View paramView, float paramFloat) {}
  
  public void a(View paramView, int paramInt, Paint paramPaint) {}
  
  public void a(View paramView, a parama) {}
  
  public void a(View paramView, bh parambh) {}
  
  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, a());
  }
  
  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, a() + paramLong);
  }
  
  public void a(View paramView, boolean paramBoolean) {}
  
  public void a(ViewGroup paramViewGroup, boolean paramBoolean) {}
  
  public boolean a(View paramView, int paramInt)
  {
    return ((paramView instanceof bj)) && (a((bj)paramView, paramInt));
  }
  
  public void b(View paramView)
  {
    paramView.invalidate();
  }
  
  public void b(View paramView, float paramFloat) {}
  
  public void b(View paramView, boolean paramBoolean) {}
  
  public boolean b(View paramView, int paramInt)
  {
    return ((paramView instanceof bj)) && (b((bj)paramView, paramInt));
  }
  
  public int c(View paramView)
  {
    return 0;
  }
  
  public void c(View paramView, float paramFloat) {}
  
  public void c(View paramView, int paramInt) {}
  
  public int d(View paramView)
  {
    return 0;
  }
  
  public void d(View paramView, float paramFloat) {}
  
  public int e(View paramView)
  {
    return 0;
  }
  
  public void e(View paramView, float paramFloat) {}
  
  public ViewParent f(View paramView)
  {
    return paramView.getParent();
  }
  
  public void f(View paramView, float paramFloat) {}
  
  public int g(View paramView)
  {
    return 0;
  }
  
  public boolean h(View paramView)
  {
    return true;
  }
  
  public float i(View paramView)
  {
    return 0.0F;
  }
  
  public float j(View paramView)
  {
    return 0.0F;
  }
  
  public int k(View paramView)
  {
    return cb.a(paramView);
  }
  
  public dq l(View paramView)
  {
    return new dq(paramView);
  }
  
  public int m(View paramView)
  {
    return 0;
  }
  
  public void n(View paramView) {}
  
  public float o(View paramView)
  {
    return 0.0F;
  }
  
  public boolean p(View paramView)
  {
    return false;
  }
  
  public void q(View paramView) {}
  
  public boolean r(View paramView)
  {
    if ((paramView instanceof bd)) {
      return ((bd)paramView).isNestedScrollingEnabled();
    }
    return false;
  }
  
  public void s(View paramView)
  {
    if ((paramView instanceof bd)) {
      ((bd)paramView).stopNestedScroll();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */