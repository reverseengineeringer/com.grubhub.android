package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.support.v4.view.bp;
import android.support.v7.a.g;
import android.support.v7.a.i;
import android.support.v7.a.j;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

class n
  extends BaseAdapter
{
  private h b;
  private int c;
  private boolean d;
  private boolean e;
  private boolean f;
  
  public int a()
  {
    int i = 0;
    int k = c;
    c = Integer.MAX_VALUE;
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = getCount();
    View localView = null;
    int j = 0;
    while (i < i1)
    {
      localView = getView(i, localView, null);
      localView.measure(m, n);
      j = Math.max(j, localView.getMeasuredWidth());
      i += 1;
    }
    c = k;
    return j;
  }
  
  public void a(int paramInt)
  {
    if (c != paramInt)
    {
      c = paramInt;
      notifyDataSetChanged();
    }
  }
  
  public void a(h paramh)
  {
    h localh = ActivityChooserView.a(a).d();
    if ((localh != null) && (a.isShown())) {
      localh.unregisterObserver(ActivityChooserView.g(a));
    }
    b = paramh;
    if ((paramh != null) && (a.isShown())) {
      paramh.registerObserver(ActivityChooserView.g(a));
    }
    notifyDataSetChanged();
  }
  
  public void a(boolean paramBoolean)
  {
    if (f != paramBoolean)
    {
      f = paramBoolean;
      notifyDataSetChanged();
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((d != paramBoolean1) || (e != paramBoolean2))
    {
      d = paramBoolean1;
      e = paramBoolean2;
      notifyDataSetChanged();
    }
  }
  
  public ResolveInfo b()
  {
    return b.b();
  }
  
  public int c()
  {
    return b.a();
  }
  
  public h d()
  {
    return b;
  }
  
  public boolean e()
  {
    return d;
  }
  
  public int getCount()
  {
    int j = b.a();
    int i = j;
    if (!d)
    {
      i = j;
      if (b.b() != null) {
        i = j - 1;
      }
    }
    j = Math.min(i, c);
    i = j;
    if (f) {
      i = j + 1;
    }
    return i;
  }
  
  public Object getItem(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      return null;
    }
    int i = paramInt;
    if (!d)
    {
      i = paramInt;
      if (b.b() != null) {
        i = paramInt + 1;
      }
    }
    return b.a(i);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((f) && (paramInt == getCount() - 1)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    switch (getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == 1) {}
      }
      else
      {
        localView = LayoutInflater.from(a.getContext()).inflate(i.abc_activity_chooser_view_list_item, paramViewGroup, false);
        localView.setId(1);
        ((TextView)localView.findViewById(g.title)).setText(a.getContext().getString(j.abc_activity_chooser_view_see_all));
      }
      return localView;
    }
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getId() == g.list_item) {}
    }
    else
    {
      localView = LayoutInflater.from(a.getContext()).inflate(i.abc_activity_chooser_view_list_item, paramViewGroup, false);
    }
    paramView = a.getContext().getPackageManager();
    paramViewGroup = (ImageView)localView.findViewById(g.icon);
    ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
    paramViewGroup.setImageDrawable(localResolveInfo.loadIcon(paramView));
    ((TextView)localView.findViewById(g.title)).setText(localResolveInfo.loadLabel(paramView));
    if ((d) && (paramInt == 0) && (e))
    {
      bp.b(localView, true);
      return localView;
    }
    bp.b(localView, false);
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */