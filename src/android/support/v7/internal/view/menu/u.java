package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.a.b;
import android.support.v7.a.e;
import android.support.v7.widget.o;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class u
  implements w, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  static final int a = android.support.v7.a.i.abc_popup_menu_item_layout;
  boolean b;
  private final Context c;
  private final LayoutInflater d;
  private final i e;
  private final v f;
  private final boolean g;
  private final int h;
  private final int i;
  private final int j;
  private View k;
  private o l;
  private ViewTreeObserver m;
  private x n;
  private ViewGroup o;
  private boolean p;
  private int q;
  private int r = 0;
  
  public u(Context paramContext, i parami, View paramView)
  {
    this(paramContext, parami, paramView, false, b.popupMenuStyle);
  }
  
  public u(Context paramContext, i parami, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, parami, paramView, paramBoolean, paramInt, 0);
  }
  
  public u(Context paramContext, i parami, View paramView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    c = paramContext;
    d = LayoutInflater.from(paramContext);
    e = parami;
    f = new v(this, e);
    g = paramBoolean;
    i = paramInt1;
    j = paramInt2;
    Resources localResources = paramContext.getResources();
    h = Math.max(getDisplayMetricswidthPixels / 2, localResources.getDimensionPixelSize(e.abc_config_prefDialogWidth));
    k = paramView;
    parami.a(this, paramContext);
  }
  
  private int g()
  {
    v localv = f;
    int i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i6 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i7 = localv.getCount();
    int i2 = 0;
    int i3 = 0;
    View localView = null;
    int i1 = 0;
    int i4 = i1;
    if (i2 < i7)
    {
      i4 = localv.getItemViewType(i2);
      if (i4 == i3) {
        break label157;
      }
      i3 = i4;
      localView = null;
      label69:
      if (o == null) {
        o = new FrameLayout(c);
      }
      localView = localv.getView(i2, localView, o);
      localView.measure(i5, i6);
      i4 = localView.getMeasuredWidth();
      if (i4 >= h) {
        i4 = h;
      }
    }
    else
    {
      return i4;
    }
    if (i4 > i1) {
      i1 = i4;
    }
    for (;;)
    {
      i2 += 1;
      break;
      label157:
      break label69;
    }
  }
  
  public void a()
  {
    if (!d()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
  
  public void a(int paramInt)
  {
    r = paramInt;
  }
  
  public void a(Context paramContext, i parami) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    if (parami != e) {}
    do
    {
      return;
      e();
    } while (n == null);
    n.a(parami, paramBoolean);
  }
  
  public void a(x paramx)
  {
    n = paramx;
  }
  
  public void a(View paramView)
  {
    k = paramView;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean a(ac paramac)
  {
    u localu;
    int i1;
    if (paramac.hasVisibleItems())
    {
      localu = new u(c, paramac, k);
      localu.a(n);
      int i2 = paramac.size();
      i1 = 0;
      if (i1 >= i2) {
        break label120;
      }
      MenuItem localMenuItem = paramac.getItem(i1);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null)) {}
    }
    label120:
    for (boolean bool = true;; bool = false)
    {
      localu.a(bool);
      if (localu.d())
      {
        if (n != null) {
          n.a(paramac);
        }
        return true;
        i1 += 1;
        break;
      }
      return false;
    }
  }
  
  public boolean a(i parami, m paramm)
  {
    return false;
  }
  
  public void b(boolean paramBoolean)
  {
    p = false;
    if (f != null) {
      f.notifyDataSetChanged();
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(i parami, m paramm)
  {
    return false;
  }
  
  public o c()
  {
    return l;
  }
  
  public boolean d()
  {
    int i1 = 0;
    l = new o(c, null, i, j);
    l.a(this);
    l.a(this);
    l.a(f);
    l.a(true);
    View localView = k;
    if (localView != null)
    {
      if (m == null) {
        i1 = 1;
      }
      m = localView.getViewTreeObserver();
      if (i1 != 0) {
        m.addOnGlobalLayoutListener(this);
      }
      l.a(localView);
      l.b(r);
      if (!p)
      {
        q = g();
        p = true;
      }
      l.d(q);
      l.e(2);
      l.c();
      l.g().setOnKeyListener(this);
      return true;
    }
    return false;
  }
  
  public void e()
  {
    if (f()) {
      l.a();
    }
  }
  
  public boolean f()
  {
    return (l != null) && (l.b());
  }
  
  public void onDismiss()
  {
    l = null;
    e.close();
    if (m != null)
    {
      if (!m.isAlive()) {
        m = k.getViewTreeObserver();
      }
      m.removeGlobalOnLayoutListener(this);
      m = null;
    }
  }
  
  public void onGlobalLayout()
  {
    if (f())
    {
      View localView = k;
      if ((localView != null) && (localView.isShown())) {
        break label28;
      }
      e();
    }
    label28:
    while (!f()) {
      return;
    }
    l.c();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = f;
    v.a(paramAdapterView).a(paramAdapterView.a(paramInt), 0);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      e();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */