package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d;

public class b
  extends ArrayAdapter<d>
{
  private Context b;
  private d[] c;
  
  public b(GHSPaymentSelectionFragment paramGHSPaymentSelectionFragment, Context paramContext, d[] paramArrayOfd)
  {
    super(paramContext, 17367049, paramArrayOfd);
    b = paramContext;
    c = paramArrayOfd;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return c[paramInt].b(b, paramViewGroup);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return c[paramInt].a(b, paramViewGroup);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */