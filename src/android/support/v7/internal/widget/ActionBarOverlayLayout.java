package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.bp;
import android.support.v4.view.dq;
import android.support.v4.view.ed;
import android.support.v4.view.ee;
import android.support.v4.widget.an;
import android.support.v7.a.b;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public class ActionBarOverlayLayout
  extends ViewGroup
  implements x
{
  static final int[] a = { b.actionBarSize, 16842841 };
  private final ed A = new ee()
  {
    public void b(View paramAnonymousView)
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, null);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, false);
    }
    
    public void c(View paramAnonymousView)
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, null);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, false);
    }
  };
  private final ed B = new ee()
  {
    public void b(View paramAnonymousView)
    {
      ActionBarOverlayLayout.b(ActionBarOverlayLayout.this, null);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, false);
    }
    
    public void c(View paramAnonymousView)
    {
      ActionBarOverlayLayout.b(ActionBarOverlayLayout.this, null);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, false);
    }
  };
  private final Runnable C = new Runnable()
  {
    public void run()
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, bp.j(ActionBarOverlayLayout.c(ActionBarOverlayLayout.this)).c(0.0F).a(ActionBarOverlayLayout.b(ActionBarOverlayLayout.this)));
      if ((ActionBarOverlayLayout.d(ActionBarOverlayLayout.this) != null) && (ActionBarOverlayLayout.d(ActionBarOverlayLayout.this).getVisibility() != 8)) {
        ActionBarOverlayLayout.b(ActionBarOverlayLayout.this, bp.j(ActionBarOverlayLayout.d(ActionBarOverlayLayout.this)).c(0.0F).a(ActionBarOverlayLayout.e(ActionBarOverlayLayout.this)));
      }
    }
  };
  private final Runnable D = new Runnable()
  {
    public void run()
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, bp.j(ActionBarOverlayLayout.c(ActionBarOverlayLayout.this)).c(-ActionBarOverlayLayout.c(ActionBarOverlayLayout.this).getHeight()).a(ActionBarOverlayLayout.b(ActionBarOverlayLayout.this)));
      if ((ActionBarOverlayLayout.d(ActionBarOverlayLayout.this) != null) && (ActionBarOverlayLayout.d(ActionBarOverlayLayout.this).getVisibility() != 8)) {
        ActionBarOverlayLayout.b(ActionBarOverlayLayout.this, bp.j(ActionBarOverlayLayout.d(ActionBarOverlayLayout.this)).c(ActionBarOverlayLayout.d(ActionBarOverlayLayout.this).getHeight()).a(ActionBarOverlayLayout.e(ActionBarOverlayLayout.this)));
      }
    }
  };
  private int b;
  private int c = 0;
  private ContentFrameLayout d;
  private ActionBarContainer e;
  private ActionBarContainer f;
  private y g;
  private Drawable h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private int n;
  private int o;
  private final Rect p = new Rect();
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private final Rect u = new Rect();
  private f v;
  private final int w = 600;
  private an x;
  private dq y;
  private dq z;
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private y a(View paramView)
  {
    if ((paramView instanceof y)) {
      return (y)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private void a(Context paramContext)
  {
    boolean bool2 = true;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(a);
    b = localTypedArray.getDimensionPixelSize(0, 0);
    h = localTypedArray.getDrawable(1);
    if (h == null)
    {
      bool1 = true;
      setWillNotDraw(bool1);
      localTypedArray.recycle();
      if (getApplicationInfotargetSdkVersion >= 19) {
        break label90;
      }
    }
    label90:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      i = bool1;
      x = an.a(paramContext);
      return;
      bool1 = false;
      break;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    boolean bool = false;
    x.a(0, 0, 0, (int)paramFloat2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
    if (x.d() > f.getHeight()) {
      bool = true;
    }
    return bool;
  }
  
  private boolean a(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    boolean bool2 = false;
    paramView = (g)paramView.getLayoutParams();
    boolean bool1 = bool2;
    if (paramBoolean1)
    {
      bool1 = bool2;
      if (leftMargin != left)
      {
        leftMargin = left;
        bool1 = true;
      }
    }
    paramBoolean1 = bool1;
    if (paramBoolean2)
    {
      paramBoolean1 = bool1;
      if (topMargin != top)
      {
        topMargin = top;
        paramBoolean1 = true;
      }
    }
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4)
    {
      paramBoolean2 = paramBoolean1;
      if (rightMargin != right)
      {
        rightMargin = right;
        paramBoolean2 = true;
      }
    }
    if ((paramBoolean3) && (bottomMargin != bottom))
    {
      bottomMargin = bottom;
      return true;
    }
    return paramBoolean2;
  }
  
  private void k()
  {
    removeCallbacks(C);
    removeCallbacks(D);
    if (y != null) {
      y.a();
    }
    if (z != null) {
      z.a();
    }
  }
  
  private void l()
  {
    k();
    postDelayed(C, 600L);
  }
  
  private void m()
  {
    k();
    postDelayed(D, 600L);
  }
  
  private void n()
  {
    k();
    C.run();
  }
  
  private void o()
  {
    k();
    D.run();
  }
  
  public g a(AttributeSet paramAttributeSet)
  {
    return new g(getContext(), paramAttributeSet);
  }
  
  public void a(int paramInt)
  {
    c();
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      g.g();
      return;
    case 5: 
      g.h();
      return;
    }
    setOverlayMode(true);
  }
  
  public void a(Menu paramMenu, android.support.v7.internal.view.menu.x paramx)
  {
    c();
    g.a(paramMenu, paramx);
  }
  
  public boolean a()
  {
    return j;
  }
  
  protected g b()
  {
    return new g(-1, -1);
  }
  
  void c()
  {
    if (d == null)
    {
      d = ((ContentFrameLayout)findViewById(android.support.v7.a.g.action_bar_activity_content));
      f = ((ActionBarContainer)findViewById(android.support.v7.a.g.action_bar_container));
      g = a(findViewById(android.support.v7.a.g.action_bar));
      e = ((ActionBarContainer)findViewById(android.support.v7.a.g.split_action_bar));
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof g;
  }
  
  public boolean d()
  {
    c();
    return g.i();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((h != null) && (!i)) {
      if (f.getVisibility() != 0) {
        break label82;
      }
    }
    label82:
    for (int i1 = (int)(f.getBottom() + bp.h(f) + 0.5F);; i1 = 0)
    {
      h.setBounds(0, i1, getWidth(), h.getIntrinsicHeight() + i1);
      h.draw(paramCanvas);
      return;
    }
  }
  
  public boolean e()
  {
    c();
    return g.j();
  }
  
  public boolean f()
  {
    c();
    return g.k();
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    c();
    if ((bp.m(this) & 0x100) != 0) {}
    boolean bool2 = a(f, paramRect, true, true, false, true);
    boolean bool1 = bool2;
    if (e != null) {
      bool1 = bool2 | a(e, paramRect, true, false, true, true);
    }
    s.set(paramRect);
    bf.a(this, s, p);
    if (!q.equals(p))
    {
      q.set(p);
      bool1 = true;
    }
    if (bool1) {
      requestLayout();
    }
    return true;
  }
  
  public boolean g()
  {
    c();
    return g.l();
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new g(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    if (f != null) {
      return -(int)bp.h(f);
    }
    return 0;
  }
  
  public CharSequence getTitle()
  {
    c();
    return g.f();
  }
  
  public boolean h()
  {
    c();
    return g.m();
  }
  
  public void i()
  {
    c();
    g.n();
  }
  
  public void j()
  {
    c();
    g.o();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    a(getContext());
    bp.n(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    k();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i2 = getPaddingLeft();
    getPaddingRight();
    int i3 = getPaddingTop();
    int i4 = getPaddingBottom();
    paramInt1 = 0;
    if (paramInt1 < i1)
    {
      View localView = getChildAt(paramInt1);
      g localg;
      int i5;
      int i6;
      int i7;
      if (localView.getVisibility() != 8)
      {
        localg = (g)localView.getLayoutParams();
        i5 = localView.getMeasuredWidth();
        i6 = localView.getMeasuredHeight();
        i7 = leftMargin + i2;
        if (localView != e) {
          break label141;
        }
      }
      label141:
      for (paramInt3 = paramInt4 - paramInt2 - i4 - i6 - bottomMargin;; paramInt3 = topMargin + i3)
      {
        localView.layout(i7, paramInt3, i5 + i7, i6 + paramInt3);
        paramInt1 += 1;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    c();
    measureChildWithMargins(f, paramInt1, 0, paramInt2, 0);
    Object localObject = (g)f.getLayoutParams();
    int i5 = Math.max(0, f.getMeasuredWidth() + leftMargin + rightMargin);
    int i1 = f.getMeasuredHeight();
    int i2 = topMargin;
    int i4 = Math.max(0, bottomMargin + (i1 + i2));
    int i3 = bf.a(0, bp.g(f));
    if (e != null)
    {
      measureChildWithMargins(e, paramInt1, 0, paramInt2, 0);
      localObject = (g)e.getLayoutParams();
      i5 = Math.max(i5, e.getMeasuredWidth() + leftMargin + rightMargin);
      i1 = e.getMeasuredHeight();
      i2 = topMargin;
      i4 = Math.max(i4, bottomMargin + (i1 + i2));
      i3 = bf.a(i3, bp.g(e));
    }
    for (;;)
    {
      int i6;
      if ((bp.m(this) & 0x100) != 0)
      {
        i6 = 1;
        if (i6 == 0) {
          break label582;
        }
        i2 = b;
        i1 = i2;
        if (k)
        {
          i1 = i2;
          if (f.getTabContainer() != null) {
            i1 = i2 + b;
          }
        }
      }
      for (;;)
      {
        label256:
        if ((g.c()) && (e != null)) {
          if (i6 != 0) {
            i2 = b;
          }
        }
        for (;;)
        {
          label286:
          r.set(p);
          t.set(s);
          if ((!j) && (i6 == 0))
          {
            localObject = r;
            top = (i1 + top);
            localObject = r;
          }
          for (bottom = (i2 + bottom);; bottom = (i2 + bottom))
          {
            a(d, r, true, true, true, true);
            if (!u.equals(t))
            {
              u.set(t);
              d.a(t);
            }
            measureChildWithMargins(d, paramInt1, 0, paramInt2, 0);
            localObject = (g)d.getLayoutParams();
            i1 = Math.max(i5, d.getMeasuredWidth() + leftMargin + rightMargin);
            i2 = d.getMeasuredHeight();
            i5 = topMargin;
            i2 = Math.max(i4, bottomMargin + (i2 + i5));
            i3 = bf.a(i3, bp.g(d));
            i4 = getPaddingLeft();
            i5 = getPaddingRight();
            i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
            setMeasuredDimension(bp.a(Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth()), paramInt1, i3), bp.a(i2, paramInt2, i3 << 16));
            return;
            i6 = 0;
            break;
            label582:
            if (f.getVisibility() == 8) {
              break label663;
            }
            i1 = f.getMeasuredHeight();
            break label256;
            i2 = e.getMeasuredHeight();
            break label286;
            localObject = t;
            top = (i1 + top);
            localObject = t;
          }
          i2 = 0;
        }
        label663:
        i1 = 0;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((!l) || (!paramBoolean)) {
      return false;
    }
    if (a(paramFloat1, paramFloat2)) {
      o();
    }
    for (;;)
    {
      m = true;
      return true;
      n();
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    n += paramInt2;
    setActionBarHideOffset(n);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    super.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    n = getActionBarHideOffset();
    k();
    if (v != null) {
      v.i();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (f.getVisibility() != 0)) {
      return false;
    }
    return l;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    super.onStopNestedScroll(paramView);
    if ((l) && (!m))
    {
      if (n > f.getHeight()) {
        break label54;
      }
      l();
    }
    for (;;)
    {
      if (v != null) {
        v.j();
      }
      return;
      label54:
      m();
    }
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    c();
    int i3 = o;
    o = paramInt;
    int i1;
    int i2;
    if ((paramInt & 0x4) == 0)
    {
      i1 = 1;
      if ((paramInt & 0x100) == 0) {
        break label120;
      }
      i2 = 1;
      label49:
      if (v != null)
      {
        f localf = v;
        if (i2 != 0) {
          break label125;
        }
        label66:
        localf.g(bool);
        if ((i1 == 0) && (i2 != 0)) {
          break label131;
        }
        v.g();
      }
    }
    for (;;)
    {
      if ((((i3 ^ paramInt) & 0x100) != 0) && (v != null)) {
        bp.n(this);
      }
      return;
      i1 = 0;
      break;
      label120:
      i2 = 0;
      break label49;
      label125:
      bool = false;
      break label66;
      label131:
      v.h();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    c = paramInt;
    if (v != null) {
      v.b(paramInt);
    }
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    k();
    int i1 = f.getHeight();
    paramInt = Math.max(0, Math.min(paramInt, i1));
    bp.b(f, -paramInt);
    if ((e != null) && (e.getVisibility() != 8))
    {
      paramInt = (int)(paramInt / i1 * e.getHeight());
      bp.b(e, paramInt);
    }
  }
  
  public void setActionBarVisibilityCallback(f paramf)
  {
    v = paramf;
    if (getWindowToken() != null)
    {
      v.b(c);
      if (o != 0)
      {
        onWindowSystemUiVisibilityChanged(o);
        bp.n(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != l)
    {
      l = paramBoolean;
      if (!paramBoolean)
      {
        if (android.support.v7.internal.a.a()) {
          stopNestedScroll();
        }
        k();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    c();
    g.a(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    c();
    g.a(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    c();
    g.b(paramInt);
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    j = paramBoolean;
    if ((paramBoolean) && (getContextgetApplicationInfotargetSdkVersion < 19)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      i = paramBoolean;
      return;
    }
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(android.support.v7.internal.a.a parama)
  {
    c();
    g.a(parama);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    c();
    g.a(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */