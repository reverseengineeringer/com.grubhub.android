package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bp;
import android.support.v4.view.dq;
import android.support.v4.view.ee;
import android.support.v7.a.b;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.support.v7.a.j;
import android.support.v7.a.l;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.x;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.af;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public class bd
  implements y
{
  private Toolbar a;
  private int b;
  private View c;
  private View d;
  private Drawable e;
  private Drawable f;
  private Drawable g;
  private boolean h;
  private CharSequence i;
  private CharSequence j;
  private CharSequence k;
  private android.support.v7.internal.a.a l;
  private boolean m;
  private android.support.v7.widget.a n;
  private int o = 0;
  private final av p;
  private int q = 0;
  private Drawable r;
  
  public bd(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, j.abc_action_bar_up_description, f.abc_ic_ab_back_mtrl_am_alpha);
  }
  
  public bd(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    a = paramToolbar;
    i = paramToolbar.getTitle();
    j = paramToolbar.getSubtitle();
    boolean bool;
    if (i != null)
    {
      bool = true;
      h = bool;
      g = a.getNavigationIcon();
      if (!paramBoolean) {
        break label488;
      }
      paramToolbar = bc.a(paramToolbar.getContext(), null, l.ActionBar, b.actionBarStyle, 0);
      Object localObject = paramToolbar.b(l.ActionBar_title);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        b((CharSequence)localObject);
      }
      localObject = paramToolbar.b(l.ActionBar_subtitle);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        c((CharSequence)localObject);
      }
      localObject = paramToolbar.a(l.ActionBar_logo);
      if (localObject != null) {
        d((Drawable)localObject);
      }
      localObject = paramToolbar.a(l.ActionBar_icon);
      if (localObject != null) {
        a((Drawable)localObject);
      }
      localObject = paramToolbar.a(l.ActionBar_homeAsUpIndicator);
      if (localObject != null) {
        b((Drawable)localObject);
      }
      c(paramToolbar.a(l.ActionBar_displayOptions, 0));
      int i1 = paramToolbar.f(l.ActionBar_customNavigationLayout, 0);
      if (i1 != 0)
      {
        a(LayoutInflater.from(a.getContext()).inflate(i1, a, false));
        c(b | 0x10);
      }
      i1 = paramToolbar.e(l.ActionBar_height, 0);
      if (i1 > 0)
      {
        localObject = a.getLayoutParams();
        height = i1;
        a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      i1 = paramToolbar.c(l.ActionBar_contentInsetStart, -1);
      int i2 = paramToolbar.c(l.ActionBar_contentInsetEnd, -1);
      if ((i1 >= 0) || (i2 >= 0)) {
        a.a(Math.max(i1, 0), Math.max(i2, 0));
      }
      i1 = paramToolbar.f(l.ActionBar_titleTextStyle, 0);
      if (i1 != 0) {
        a.a(a.getContext(), i1);
      }
      i1 = paramToolbar.f(l.ActionBar_subtitleTextStyle, 0);
      if (i1 != 0) {
        a.b(a.getContext(), i1);
      }
      i1 = paramToolbar.f(l.ActionBar_popupTheme, 0);
      if (i1 != 0) {
        a.setPopupTheme(i1);
      }
      paramToolbar.b();
    }
    for (p = paramToolbar.c();; p = new av(paramToolbar.getContext()))
    {
      f(paramInt1);
      k = a.getNavigationContentDescription();
      c(p.a(paramInt2));
      a.setNavigationOnClickListener(new View.OnClickListener()
      {
        final android.support.v7.internal.view.menu.a a = new android.support.v7.internal.view.menu.a(bd.a(bd.this).getContext(), 0, 16908332, 0, 0, bd.b(bd.this));
        
        public void onClick(View paramAnonymousView)
        {
          if ((bd.c(bd.this) != null) && (bd.d(bd.this))) {
            bd.c(bd.this).a(0, a);
          }
        }
      });
      return;
      bool = false;
      break;
      label488:
      b = r();
    }
  }
  
  private void e(CharSequence paramCharSequence)
  {
    i = paramCharSequence;
    if ((b & 0x8) != 0) {
      a.setTitle(paramCharSequence);
    }
  }
  
  private int r()
  {
    int i1 = 11;
    if (a.getNavigationIcon() != null) {
      i1 = 15;
    }
    return i1;
  }
  
  private void s()
  {
    Drawable localDrawable = null;
    if ((b & 0x2) != 0)
    {
      if ((b & 0x1) == 0) {
        break label49;
      }
      if (f == null) {
        break label41;
      }
      localDrawable = f;
    }
    for (;;)
    {
      a.setLogo(localDrawable);
      return;
      label41:
      localDrawable = e;
      continue;
      label49:
      localDrawable = e;
    }
  }
  
  private void t()
  {
    if ((b & 0x4) != 0)
    {
      if (TextUtils.isEmpty(k)) {
        a.setNavigationContentDescription(q);
      }
    }
    else {
      return;
    }
    a.setNavigationContentDescription(k);
  }
  
  private void u()
  {
    Toolbar localToolbar;
    if ((b & 0x4) != 0)
    {
      localToolbar = a;
      if (g == null) {
        break label32;
      }
    }
    label32:
    for (Drawable localDrawable = g;; localDrawable = r)
    {
      localToolbar.setNavigationIcon(localDrawable);
      return;
    }
  }
  
  public ViewGroup a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = p.a(paramInt);; localDrawable = null)
    {
      a(localDrawable);
      return;
    }
  }
  
  public void a(Drawable paramDrawable)
  {
    e = paramDrawable;
    s();
  }
  
  public void a(android.support.v7.internal.a.a parama)
  {
    l = parama;
  }
  
  public void a(ah paramah)
  {
    if ((c != null) && (c.getParent() == a)) {
      a.removeView(c);
    }
    c = paramah;
    if ((paramah != null) && (o == 2))
    {
      a.addView(c, 0);
      af localaf = (af)c.getLayoutParams();
      width = -2;
      height = -2;
      a = 8388691;
      paramah.setAllowCollapse(true);
    }
  }
  
  public void a(Menu paramMenu, x paramx)
  {
    if (n == null)
    {
      n = new android.support.v7.widget.a(a.getContext());
      n.a(g.action_menu_presenter);
    }
    n.a(paramx);
    a.a((i)paramMenu, n);
  }
  
  public void a(View paramView)
  {
    if ((d != null) && ((b & 0x10) != 0)) {
      a.removeView(d);
    }
    d = paramView;
    if ((paramView != null) && ((b & 0x10) != 0)) {
      a.addView(d);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!h) {
      e(paramCharSequence);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a.setCollapsible(paramBoolean);
  }
  
  public Context b()
  {
    return a.getContext();
  }
  
  public void b(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = p.a(paramInt);; localDrawable = null)
    {
      d(localDrawable);
      return;
    }
  }
  
  public void b(Drawable paramDrawable)
  {
    g = paramDrawable;
    u();
  }
  
  public void b(CharSequence paramCharSequence)
  {
    h = true;
    e(paramCharSequence);
  }
  
  public void b(boolean paramBoolean) {}
  
  public void c(int paramInt)
  {
    int i1 = b ^ paramInt;
    b = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0) {
          break label115;
        }
        u();
        t();
      }
      if ((i1 & 0x3) != 0) {
        s();
      }
      if ((i1 & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0) {
          break label126;
        }
        a.setTitle(i);
        a.setSubtitle(j);
      }
    }
    for (;;)
    {
      if (((i1 & 0x10) != 0) && (d != null))
      {
        if ((paramInt & 0x10) == 0) {
          break label145;
        }
        a.addView(d);
      }
      return;
      label115:
      a.setNavigationIcon(null);
      break;
      label126:
      a.setTitle(null);
      a.setSubtitle(null);
    }
    label145:
    a.removeView(d);
  }
  
  public void c(Drawable paramDrawable)
  {
    if (r != paramDrawable)
    {
      r = paramDrawable;
      u();
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    j = paramCharSequence;
    if ((b & 0x8) != 0) {
      a.setSubtitle(paramCharSequence);
    }
  }
  
  public boolean c()
  {
    return false;
  }
  
  public void d(int paramInt)
  {
    if (paramInt == 8) {
      bp.j(a).a(0.0F).a(new ee()
      {
        private boolean b = false;
        
        public void b(View paramAnonymousView)
        {
          if (!b) {
            bd.a(bd.this).setVisibility(8);
          }
        }
        
        public void c(View paramAnonymousView)
        {
          b = true;
        }
      });
    }
    while (paramInt != 0) {
      return;
    }
    bp.j(a).a(1.0F).a(new ee()
    {
      public void a(View paramAnonymousView)
      {
        bd.a(bd.this).setVisibility(0);
      }
    });
  }
  
  public void d(Drawable paramDrawable)
  {
    f = paramDrawable;
    s();
  }
  
  public void d(CharSequence paramCharSequence)
  {
    k = paramCharSequence;
    t();
  }
  
  public boolean d()
  {
    return a.g();
  }
  
  public void e()
  {
    a.h();
  }
  
  public void e(int paramInt)
  {
    if (paramInt == 0) {}
    for (Object localObject = null;; localObject = b().getString(paramInt))
    {
      d((CharSequence)localObject);
      return;
    }
  }
  
  public CharSequence f()
  {
    return a.getTitle();
  }
  
  public void f(int paramInt)
  {
    if (paramInt == q) {}
    do
    {
      return;
      q = paramInt;
    } while (!TextUtils.isEmpty(a.getNavigationContentDescription()));
    e(q);
  }
  
  public void g()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public void h()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public boolean i()
  {
    return a.a();
  }
  
  public boolean j()
  {
    return a.b();
  }
  
  public boolean k()
  {
    return a.c();
  }
  
  public boolean l()
  {
    return a.d();
  }
  
  public boolean m()
  {
    return a.e();
  }
  
  public void n()
  {
    m = true;
  }
  
  public void o()
  {
    a.f();
  }
  
  public int p()
  {
    return b;
  }
  
  public int q()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */