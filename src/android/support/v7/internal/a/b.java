package android.support.v7.internal.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.app.q;
import android.support.v4.view.bp;
import android.support.v4.view.dq;
import android.support.v4.view.ed;
import android.support.v4.view.ee;
import android.support.v4.view.ef;
import android.support.v7.a.g;
import android.support.v7.a.l;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.internal.view.h;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ah;
import android.support.v7.internal.widget.f;
import android.support.v7.internal.widget.y;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

public class b
  extends android.support.v7.app.a
  implements f
{
  private static final boolean i;
  private int A = 0;
  private boolean B = true;
  private boolean C;
  private boolean D;
  private boolean E;
  private boolean F = true;
  private h G;
  private boolean H;
  c a;
  android.support.v7.b.a b;
  android.support.v7.b.b c;
  boolean d;
  final ed e = new ee()
  {
    public void b(View paramAnonymousView)
    {
      if ((b.a(b.this)) && (b.b(b.this) != null))
      {
        bp.b(b.b(b.this), 0.0F);
        bp.b(b.c(b.this), 0.0F);
      }
      if ((b.d(b.this) != null) && (b.e(b.this) == 1)) {
        b.d(b.this).setVisibility(8);
      }
      b.c(b.this).setVisibility(8);
      b.c(b.this).setTransitioning(false);
      b.a(b.this, null);
      e();
      if (b.f(b.this) != null) {
        bp.n(b.f(b.this));
      }
    }
  };
  final ed f = new ee()
  {
    public void b(View paramAnonymousView)
    {
      b.a(b.this, null);
      b.c(b.this).requestLayout();
    }
  };
  final ef g = new ef()
  {
    public void a(View paramAnonymousView)
    {
      ((View)b.c(b.this).getParent()).invalidate();
    }
  };
  private Context j;
  private Context k;
  private q l;
  private ActionBarOverlayLayout m;
  private ActionBarContainer n;
  private y o;
  private ActionBarContextView p;
  private ActionBarContainer q;
  private View r;
  private ah s;
  private ArrayList<Object> t = new ArrayList();
  private int u = -1;
  private boolean v;
  private boolean w;
  private ArrayList<android.support.v7.app.c> x = new ArrayList();
  private int y;
  private boolean z;
  
  static
  {
    boolean bool2 = true;
    if (!b.class.desiredAssertionStatus())
    {
      bool1 = true;
      h = bool1;
      if (Build.VERSION.SDK_INT < 14) {
        break label36;
      }
    }
    label36:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      i = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public b(ActionBarActivity paramActionBarActivity, boolean paramBoolean)
  {
    l = paramActionBarActivity;
    paramActionBarActivity = paramActionBarActivity.getWindow().getDecorView();
    a(paramActionBarActivity);
    if (!paramBoolean) {
      r = paramActionBarActivity.findViewById(16908290);
    }
  }
  
  private void a(View paramView)
  {
    m = ((ActionBarOverlayLayout)paramView.findViewById(g.decor_content_parent));
    if (m != null) {
      m.setActionBarVisibilityCallback(this);
    }
    o = b(paramView.findViewById(g.action_bar));
    p = ((ActionBarContextView)paramView.findViewById(g.action_context_bar));
    n = ((ActionBarContainer)paramView.findViewById(g.action_bar_container));
    q = ((ActionBarContainer)paramView.findViewById(g.split_action_bar));
    if ((o == null) || (p == null) || (n == null)) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with a compatible window decor layout");
    }
    j = o.b();
    int i1;
    if (o.c())
    {
      i1 = 1;
      y = i1;
      if ((o.p() & 0x4) == 0) {
        break label297;
      }
      i1 = 1;
      label193:
      if (i1 != 0) {
        v = true;
      }
      paramView = android.support.v7.internal.view.a.a(j);
      if ((!paramView.f()) && (i1 == 0)) {
        break label302;
      }
    }
    label297:
    label302:
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      k(paramView.d());
      paramView = j.obtainStyledAttributes(null, l.ActionBar, android.support.v7.a.b.actionBarStyle, 0);
      if (paramView.getBoolean(l.ActionBar_hideOnContentScroll, false)) {
        b(true);
      }
      i1 = paramView.getDimensionPixelSize(l.ActionBar_elevation, 0);
      if (i1 != 0) {
        a(i1);
      }
      paramView.recycle();
      return;
      i1 = 0;
      break;
      i1 = 0;
      break label193;
    }
  }
  
  private y b(View paramView)
  {
    if ((paramView instanceof y)) {
      return (y)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private static boolean b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3) {}
    while ((!paramBoolean1) && (!paramBoolean2)) {
      return true;
    }
    return false;
  }
  
  private void k()
  {
    if (!E)
    {
      E = true;
      if (m != null) {
        m.setShowingForActionMode(true);
      }
      l(false);
    }
  }
  
  private void k(boolean paramBoolean)
  {
    boolean bool = true;
    z = paramBoolean;
    int i1;
    label45:
    label78:
    Object localObject;
    if (!z)
    {
      o.a(null);
      n.setTabContainer(s);
      if (f() != 2) {
        break label155;
      }
      i1 = 1;
      if (s != null)
      {
        if (i1 == 0) {
          break label160;
        }
        s.setVisibility(0);
        if (m != null) {
          bp.n(m);
        }
      }
      localObject = o;
      if ((z) || (i1 == 0)) {
        break label172;
      }
      paramBoolean = true;
      label97:
      ((y)localObject).a(paramBoolean);
      localObject = m;
      if ((z) || (i1 == 0)) {
        break label177;
      }
    }
    label155:
    label160:
    label172:
    label177:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(paramBoolean);
      return;
      n.setTabContainer(null);
      o.a(s);
      break;
      i1 = 0;
      break label45;
      s.setVisibility(8);
      break label78;
      paramBoolean = false;
      break label97;
    }
  }
  
  private void l()
  {
    if (E)
    {
      E = false;
      if (m != null) {
        m.setShowingForActionMode(false);
      }
      l(false);
    }
  }
  
  private void l(boolean paramBoolean)
  {
    if (b(C, D, E)) {
      if (!F)
      {
        F = true;
        h(paramBoolean);
      }
    }
    while (!F) {
      return;
    }
    F = false;
    i(paramBoolean);
  }
  
  public int a()
  {
    return o.p();
  }
  
  public android.support.v7.b.a a(android.support.v7.b.b paramb)
  {
    if (a != null) {
      a.c();
    }
    m.setHideOnContentScrollEnabled(false);
    p.c();
    paramb = new c(this, p.getContext(), paramb);
    if (paramb.e())
    {
      paramb.d();
      p.a(paramb);
      j(true);
      if ((q != null) && (y == 1) && (q.getVisibility() != 0))
      {
        q.setVisibility(0);
        if (m != null) {
          bp.n(m);
        }
      }
      p.sendAccessibilityEvent(32);
      a = paramb;
      return paramb;
    }
    return null;
  }
  
  public void a(float paramFloat)
  {
    bp.f(n, paramFloat);
    if (q != null) {
      bp.f(q, paramFloat);
    }
  }
  
  public void a(int paramInt)
  {
    o.e(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i1 = o.p();
    if ((paramInt2 & 0x4) != 0) {
      v = true;
    }
    o.c(i1 & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void a(Configuration paramConfiguration)
  {
    k(android.support.v7.internal.view.a.a(j).d());
  }
  
  public void a(Drawable paramDrawable)
  {
    o.b(paramDrawable);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    o.a(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    o.b(paramBoolean);
  }
  
  public Context b()
  {
    int i1;
    if (k == null)
    {
      TypedValue localTypedValue = new TypedValue();
      j.getTheme().resolveAttribute(android.support.v7.a.b.actionBarWidgetTheme, localTypedValue, true);
      i1 = resourceId;
      if (i1 == 0) {
        break label61;
      }
    }
    label61:
    for (k = new ContextThemeWrapper(j, i1);; k = j) {
      return k;
    }
  }
  
  public void b(int paramInt)
  {
    A = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    if ((paramBoolean) && (!m.a())) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    d = paramBoolean;
    m.setHideOnContentScrollEnabled(paramBoolean);
  }
  
  public void c(boolean paramBoolean)
  {
    if (!v) {
      f(paramBoolean);
    }
  }
  
  public void d(boolean paramBoolean)
  {
    H = paramBoolean;
    if ((!paramBoolean) && (G != null)) {
      G.b();
    }
  }
  
  public boolean d()
  {
    if ((o != null) && (o.d()))
    {
      o.e();
      return true;
    }
    return false;
  }
  
  void e()
  {
    if (c != null)
    {
      c.a(b);
      b = null;
      c = null;
    }
  }
  
  public void e(boolean paramBoolean)
  {
    if (paramBoolean == w) {}
    for (;;)
    {
      return;
      w = paramBoolean;
      int i2 = x.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((android.support.v7.app.c)x.get(i1)).a(paramBoolean);
        i1 += 1;
      }
    }
  }
  
  public int f()
  {
    return o.q();
  }
  
  public void f(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      a(i1, 4);
      return;
    }
  }
  
  public void g()
  {
    if (D)
    {
      D = false;
      l(true);
    }
  }
  
  public void g(boolean paramBoolean)
  {
    B = paramBoolean;
  }
  
  public void h()
  {
    if (!D)
    {
      D = true;
      l(true);
    }
  }
  
  public void h(boolean paramBoolean)
  {
    if (G != null) {
      G.b();
    }
    n.setVisibility(0);
    if ((A == 0) && (i) && ((H) || (paramBoolean)))
    {
      bp.b(n, 0.0F);
      float f2 = -n.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp77_75 = localObject;
        tmp77_75[0] = 0;
        Object tmp81_77 = tmp77_75;
        tmp81_77[1] = 0;
        tmp81_77;
        n.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      bp.b(n, f1);
      Object localObject = new h();
      dq localdq = bp.j(n).c(0.0F);
      localdq.a(g);
      ((h)localObject).a(localdq);
      if ((B) && (r != null))
      {
        bp.b(r, f1);
        ((h)localObject).a(bp.j(r).c(0.0F));
      }
      if ((q != null) && (y == 1))
      {
        bp.b(q, q.getHeight());
        q.setVisibility(0);
        ((h)localObject).a(bp.j(q).c(0.0F));
      }
      ((h)localObject).a(AnimationUtils.loadInterpolator(j, 17432582));
      ((h)localObject).a(250L);
      ((h)localObject).a(f);
      G = ((h)localObject);
      ((h)localObject).a();
    }
    for (;;)
    {
      if (m != null) {
        bp.n(m);
      }
      return;
      bp.c(n, 1.0F);
      bp.b(n, 0.0F);
      if ((B) && (r != null)) {
        bp.b(r, 0.0F);
      }
      if ((q != null) && (y == 1))
      {
        bp.c(q, 1.0F);
        bp.b(q, 0.0F);
        q.setVisibility(0);
      }
      f.b(null);
    }
  }
  
  public void i()
  {
    if (G != null)
    {
      G.b();
      G = null;
    }
  }
  
  public void i(boolean paramBoolean)
  {
    if (G != null) {
      G.b();
    }
    if ((A == 0) && (i) && ((H) || (paramBoolean)))
    {
      bp.c(n, 1.0F);
      n.setTransitioning(true);
      h localh = new h();
      float f2 = -n.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp86_84 = localObject;
        tmp86_84[0] = 0;
        Object tmp90_86 = tmp86_84;
        tmp90_86[1] = 0;
        tmp90_86;
        n.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      Object localObject = bp.j(n).c(f1);
      ((dq)localObject).a(g);
      localh.a((dq)localObject);
      if ((B) && (r != null)) {
        localh.a(bp.j(r).c(f1));
      }
      if ((q != null) && (q.getVisibility() == 0))
      {
        bp.c(q, 1.0F);
        localh.a(bp.j(q).c(q.getHeight()));
      }
      localh.a(AnimationUtils.loadInterpolator(j, 17432581));
      localh.a(250L);
      localh.a(e);
      G = localh;
      localh.a();
      return;
    }
    e.b(null);
  }
  
  public void j() {}
  
  public void j(boolean paramBoolean)
  {
    int i2 = 0;
    Object localObject;
    if (paramBoolean)
    {
      k();
      localObject = o;
      if (!paramBoolean) {
        break label57;
      }
      i1 = 8;
      label23:
      ((y)localObject).d(i1);
      localObject = p;
      if (!paramBoolean) {
        break label62;
      }
    }
    label57:
    label62:
    for (int i1 = i2;; i1 = 8)
    {
      ((ActionBarContextView)localObject).a(i1);
      return;
      l();
      break;
      i1 = 0;
      break label23;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */