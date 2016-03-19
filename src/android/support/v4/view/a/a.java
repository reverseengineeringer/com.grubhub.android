package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public class a
{
  private static final f a = new k();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new j();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new i();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new h();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new g();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new e();
      return;
    }
  }
  
  public a(Object paramObject)
  {
    b = paramObject;
  }
  
  public static a a(a parama)
  {
    return a(a.a(b));
  }
  
  static a a(Object paramObject)
  {
    if (paramObject != null) {
      return new a(paramObject);
    }
    return null;
  }
  
  private static String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "ACTION_UNKNOWN";
    case 1: 
      return "ACTION_FOCUS";
    case 2: 
      return "ACTION_CLEAR_FOCUS";
    case 4: 
      return "ACTION_SELECT";
    case 8: 
      return "ACTION_CLEAR_SELECTION";
    case 16: 
      return "ACTION_CLICK";
    case 32: 
      return "ACTION_LONG_CLICK";
    case 64: 
      return "ACTION_ACCESSIBILITY_FOCUS";
    case 128: 
      return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
    case 256: 
      return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
    case 512: 
      return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
    case 1024: 
      return "ACTION_NEXT_HTML_ELEMENT";
    case 2048: 
      return "ACTION_PREVIOUS_HTML_ELEMENT";
    case 4096: 
      return "ACTION_SCROLL_FORWARD";
    case 8192: 
      return "ACTION_SCROLL_BACKWARD";
    case 65536: 
      return "ACTION_CUT";
    case 16384: 
      return "ACTION_COPY";
    case 32768: 
      return "ACTION_PASTE";
    }
    return "ACTION_SET_SELECTION";
  }
  
  public Object a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void a(Rect paramRect)
  {
    a.a(b, paramRect);
  }
  
  public void a(View paramView)
  {
    a.c(b, paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.c(b, paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    a.c(b, paramBoolean);
  }
  
  public boolean a(b paramb)
  {
    return a.a(b, b.a(paramb));
  }
  
  public int b()
  {
    return a.b(b);
  }
  
  public void b(Rect paramRect)
  {
    a.c(b, paramRect);
  }
  
  public void b(View paramView)
  {
    a.a(b, paramView);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.a(b, paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    a.d(b, paramBoolean);
  }
  
  public void c(Rect paramRect)
  {
    a.b(b, paramRect);
  }
  
  public void c(View paramView)
  {
    a.b(b, paramView);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    a.b(b, paramCharSequence);
  }
  
  public void c(boolean paramBoolean)
  {
    a.h(b, paramBoolean);
  }
  
  public boolean c()
  {
    return a.g(b);
  }
  
  public void d(Rect paramRect)
  {
    a.d(b, paramRect);
  }
  
  public void d(boolean paramBoolean)
  {
    a.i(b, paramBoolean);
  }
  
  public boolean d()
  {
    return a.h(b);
  }
  
  public void e(boolean paramBoolean)
  {
    a.g(b, paramBoolean);
  }
  
  public boolean e()
  {
    return a.k(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (a)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public boolean f()
  {
    return a.l(b);
  }
  
  public void g(boolean paramBoolean)
  {
    a.e(b, paramBoolean);
  }
  
  public boolean g()
  {
    return a.r(b);
  }
  
  public void h(boolean paramBoolean)
  {
    a.b(b, paramBoolean);
  }
  
  public boolean h()
  {
    return a.s(b);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  public void i(boolean paramBoolean)
  {
    a.f(b, paramBoolean);
  }
  
  public boolean i()
  {
    return a.p(b);
  }
  
  public boolean j()
  {
    return a.i(b);
  }
  
  public boolean k()
  {
    return a.m(b);
  }
  
  public boolean l()
  {
    return a.j(b);
  }
  
  public boolean m()
  {
    return a.n(b);
  }
  
  public boolean n()
  {
    return a.o(b);
  }
  
  public CharSequence o()
  {
    return a.e(b);
  }
  
  public CharSequence p()
  {
    return a.c(b);
  }
  
  public CharSequence q()
  {
    return a.f(b);
  }
  
  public CharSequence r()
  {
    return a.d(b);
  }
  
  public void s()
  {
    a.q(b);
  }
  
  public String t()
  {
    return a.t(b);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Rect localRect = new Rect();
    a(localRect);
    localStringBuilder.append("; boundsInParent: " + localRect);
    c(localRect);
    localStringBuilder.append("; boundsInScreen: " + localRect);
    localStringBuilder.append("; packageName: ").append(o());
    localStringBuilder.append("; className: ").append(p());
    localStringBuilder.append("; text: ").append(q());
    localStringBuilder.append("; contentDescription: ").append(r());
    localStringBuilder.append("; viewId: ").append(t());
    localStringBuilder.append("; checkable: ").append(c());
    localStringBuilder.append("; checked: ").append(d());
    localStringBuilder.append("; focusable: ").append(e());
    localStringBuilder.append("; focused: ").append(f());
    localStringBuilder.append("; selected: ").append(i());
    localStringBuilder.append("; clickable: ").append(j());
    localStringBuilder.append("; longClickable: ").append(k());
    localStringBuilder.append("; enabled: ").append(l());
    localStringBuilder.append("; password: ").append(m());
    localStringBuilder.append("; scrollable: " + n());
    localStringBuilder.append("; [");
    int i = b();
    while (i != 0)
    {
      int k = 1 << Integer.numberOfTrailingZeros(i);
      int j = i & (k ^ 0xFFFFFFFF);
      localStringBuilder.append(b(k));
      i = j;
      if (j != 0)
      {
        localStringBuilder.append(", ");
        i = j;
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */