package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.m;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class ActivityChooserView
  extends ViewGroup
{
  android.support.v4.view.j a;
  private final n b;
  private final o c;
  private final m d;
  private final FrameLayout e;
  private final ImageView f;
  private final FrameLayout g;
  private final int h;
  private final DataSetObserver i;
  private final ViewTreeObserver.OnGlobalLayoutListener j;
  private android.support.v7.widget.o k;
  private PopupWindow.OnDismissListener l;
  private boolean m;
  private int n;
  private boolean o;
  private int p;
  
  private void a(int paramInt)
  {
    if (b.d() == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(j);
    boolean bool;
    int i1;
    label59:
    label90:
    android.support.v7.widget.o localo;
    if (g.getVisibility() == 0)
    {
      bool = true;
      int i2 = b.c();
      if (!bool) {
        break label190;
      }
      i1 = 1;
      if ((paramInt == Integer.MAX_VALUE) || (i2 <= i1 + paramInt)) {
        break label195;
      }
      b.a(true);
      b.a(paramInt - 1);
      localo = getListPopupWindow();
      if (!localo.b())
      {
        if ((!m) && (bool)) {
          break label214;
        }
        b.a(true, bool);
      }
    }
    for (;;)
    {
      localo.d(Math.min(b.a(), h));
      localo.c();
      if (a != null) {
        a.a(true);
      }
      localo.g().setContentDescription(getContext().getString(android.support.v7.a.j.abc_activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label190:
      i1 = 0;
      break label59;
      label195:
      b.a(false);
      b.a(paramInt);
      break label90;
      label214:
      b.a(false, false);
    }
  }
  
  private android.support.v7.widget.o getListPopupWindow()
  {
    if (k == null)
    {
      k = new android.support.v7.widget.o(getContext());
      k.a(b);
      k.a(this);
      k.a(true);
      k.a(c);
      k.a(c);
    }
    return k;
  }
  
  public boolean a()
  {
    if ((c()) || (!o)) {
      return false;
    }
    m = false;
    a(n);
    return true;
  }
  
  public boolean b()
  {
    if (c())
    {
      getListPopupWindow().a();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(j);
      }
    }
    return true;
  }
  
  public boolean c()
  {
    return getListPopupWindow().b();
  }
  
  public h getDataModel()
  {
    return b.d();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    h localh = b.d();
    if (localh != null) {
      localh.registerObserver(i);
    }
    o = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = b.d();
    if (localObject != null) {
      ((h)localObject).unregisterObserver(i);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(j);
    }
    if (c()) {
      b();
    }
    o = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    d.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!c()) {
      b();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    m localm = d;
    int i1 = paramInt2;
    if (g.getVisibility() != 0) {
      i1 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localm, paramInt1, i1);
    setMeasuredDimension(localm.getMeasuredWidth(), localm.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(h paramh)
  {
    b.a(paramh);
    if (c())
    {
      b();
      a();
    }
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    p = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    f.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    f.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt)
  {
    n = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    l = paramOnDismissListener;
  }
  
  public void setProvider(android.support.v4.view.j paramj)
  {
    a = paramj;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */