package android.support.v7.internal.a;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.b.a;
import android.support.v7.internal.view.e;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.j;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.y;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public class c
  extends a
  implements j
{
  private final Context b;
  private final i c;
  private android.support.v7.b.b d;
  private WeakReference<View> e;
  
  public c(b paramb, Context paramContext, android.support.v7.b.b paramb1)
  {
    b = paramContext;
    d = paramb1;
    c = new i(paramContext).a(1);
    c.a(this);
  }
  
  public MenuInflater a()
  {
    return new e(b);
  }
  
  public void a(int paramInt)
  {
    b(b.k(a).getResources().getString(paramInt));
  }
  
  public void a(i parami)
  {
    if (d == null) {
      return;
    }
    d();
    b.i(a).a();
  }
  
  public void a(View paramView)
  {
    b.i(a).setCustomView(paramView);
    e = new WeakReference(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b.i(a).setSubtitle(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    b.i(a).setTitleOptional(paramBoolean);
  }
  
  public boolean a(i parami, MenuItem paramMenuItem)
  {
    if (d != null) {
      return d.a(this, paramMenuItem);
    }
    return false;
  }
  
  public Menu b()
  {
    return c;
  }
  
  public void b(int paramInt)
  {
    a(b.k(a).getResources().getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    b.i(a).setTitle(paramCharSequence);
  }
  
  public void c()
  {
    if (a.a != this) {
      return;
    }
    if (!b.a(b.g(a), b.h(a), false))
    {
      a.b = this;
      a.c = d;
    }
    for (;;)
    {
      d = null;
      a.j(false);
      b.i(a).b();
      b.j(a).a().sendAccessibilityEvent(32);
      b.f(a).setHideOnContentScrollEnabled(a.d);
      a.a = null;
      return;
      d.a(this);
    }
  }
  
  public void d()
  {
    c.g();
    try
    {
      d.b(this, c);
      return;
    }
    finally
    {
      c.h();
    }
  }
  
  public boolean e()
  {
    c.g();
    try
    {
      boolean bool = d.a(this, c);
      return bool;
    }
    finally
    {
      c.h();
    }
  }
  
  public CharSequence f()
  {
    return b.i(a).getTitle();
  }
  
  public CharSequence g()
  {
    return b.i(a).getSubtitle();
  }
  
  public boolean h()
  {
    return b.i(a).d();
  }
  
  public View i()
  {
    if (e != null) {
      return (View)e.get();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */