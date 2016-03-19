package android.support.v7.internal.widget;

import android.support.v7.app.d;
import android.support.v7.widget.m;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

class ai
  extends BaseAdapter
{
  private ai(ah paramah) {}
  
  public int getCount()
  {
    return ah.a(a).getChildCount();
  }
  
  public Object getItem(int paramInt)
  {
    return ((ak)ah.a(a).getChildAt(paramInt)).b();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      return ah.a(a, (d)getItem(paramInt), true);
    }
    ((ak)paramView).a((d)getItem(paramInt));
    return paramView;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */