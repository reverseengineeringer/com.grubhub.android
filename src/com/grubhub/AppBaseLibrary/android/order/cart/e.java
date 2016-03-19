package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Context;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import java.util.List;

class e
  extends BaseAdapter
{
  private Context b;
  
  public e(GHSCartFragment paramGHSCartFragment, Context paramContext)
  {
    b = paramContext;
  }
  
  public GHSICartDataModel.GHSIOrderItem a(int paramInt)
  {
    return (GHSICartDataModel.GHSIOrderItem)GHSCartFragment.s(a).get(paramInt);
  }
  
  public int getCount()
  {
    return GHSCartFragment.s(a).size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new d(a, b);
      paramViewGroup = paramView.findViewById(2131690165);
      paramViewGroup.setOnTouchListener(GHSCartFragment.t(a));
      paramViewGroup.setOnLongClickListener(new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          if (GHSCartFragment.u(a)) {
            return false;
          }
          paramAnonymousView.setTranslationX(GHSCartFragment.f(a));
          return false;
        }
      });
    }
    for (;;)
    {
      paramView.findViewById(2131690163).setOnClickListener(new g(a, paramInt));
      paramView.findViewById(2131690164).setOnClickListener(new f(a, paramInt));
      ((d)paramView).a(a(paramInt));
      return paramView;
      paramView.findViewById(2131690165).setTranslationX(0.0F);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */